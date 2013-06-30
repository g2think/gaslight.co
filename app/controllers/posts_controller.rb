class PostsController < ApplicationController

  respond_to :html, :rss, :json

  def index
    respond_with posts
  end

  def search
    respond_with posts, template: 'posts/index'
  end

  def recent
    respond_with(posts) do |format|
      format.html { render :index }
      format.rss { render template: 'posts/index', layout: false }
    end
  end

  protected

  def posts
    posts ||= recent? ? Post.recent : Post.published.by_publish_date
    posts = posts.written_by([params[:author]]) if params[:author]
    posts = posts.tagged_with([params[:tagged]]) if params[:tagged]
    posts = posts.search(params[:q]) if params[:q].present?
    posts
  end
  helper_method :posts

  def post
    Post.published.find(params[:id])
  end
  helper_method :post

  def recent?
    request.fullpath =~ /#{recent_posts_path}/
  end
  helper_method :recent?

  def authors
    Post.select('author, count(id) as post_count').group('author').order('post_count desc')
  end
  helper_method :authors
end

