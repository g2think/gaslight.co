class PagesController < HighVoltage::PagesController
  caches_page :show

  protected

  # FIXME: Where does this belong?
  def message; Message.new; end
  helper_method :message

  rescue_from ActionView::MissingTemplate do |exception|
    if exception.message =~ %r{Missing template #{page_finder.content_path}}
      render template: 'pages/home', formats: [:html], status: 404
    else
      raise exception
    end
  end
end
