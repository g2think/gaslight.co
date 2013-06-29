class PostsController < ApplicationController

  protected

  def posts
    Post.recent.reverse
  end
  helper_method :posts

  def post
    post_path = params[:id]
    Post.find(post_path)
  end
  helper_method :post
end

