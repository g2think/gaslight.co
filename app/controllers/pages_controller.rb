class PagesController < HighVoltage::PagesController
  expose(:posts) { Post.articles.recent }
  expose(:podcasts) { Post.podcasts.recent }

  protected

  # FIXME: Where does this belong?
  def message; Message.new; end
  helper_method :message

  rescue_from ActionView::MissingTemplate do |exception|
    if exception.message =~ %r{Missing template #{page_finder.content_path}}
      render template: 'pages/404', formats: [:html], status: 404
    else
      raise exception
    end
  end
end
