class SitemapsController < ApplicationController
  respond_to :xml

  expose(:posts) { Post.published.by_publish_date }
  expose(:static_pages) { %w{about coffee contact home how-we-work live work} }

  def index
    respond_with posts
  end
end

