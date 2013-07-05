class PostsController < ApplicationController

  respond_to :html, :rss, :json
  caches_page :show

  def show
    @canonical_url = post_url(Post.find_by_slug(params[:slug]))
  end

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
    posts = posts.posted_on(params[:year], params[:month], params[:day])
    posts = posts.search(params[:q]) if params[:q].present?
    posts
  end
  helper_method :posts

  def post
    Post.published.find_by_slug(params[:slug])
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

  def search_date
    year = (params[:year] || Date.today.year).to_i
    month = (params[:month] || Date.today.month).to_i
    day = (params[:day] || Date.today.day).to_i
    Date.new(year, month, day)
  end
  helper_method :search_date
end

