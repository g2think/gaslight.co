class PagesController < HighVoltage::PagesController
  expose(:posts) { Post.published.by_publish_date.limit(4) }
  expose(:podcasts) { Post.published.tagged('podcast').by_publish_date.limit(4) }

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
