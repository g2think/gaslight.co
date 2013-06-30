class PostsController < ApplicationController

  protected

  def posts
    params[:all].present? ? Post.published.recent(999) : Post.recent
  end
  helper_method :posts

  def post
    Post.published.find(params[:id])
  end
  helper_method :post
end

