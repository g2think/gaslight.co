class PagesController < HighVoltage::PagesController
  layout :layout_for_page
  caches_page :show

  protected

  def layout_for_page
    'application'
  end

  # FIXME: Where does this belong?
  def message; Message.new; end
  helper_method :message

  rescue_from ActionView::MissingTemplate do |exception|
    if exception.message =~ %r{Missing template #{content_path}}
      render template: 'pages/home', formats: [:html], status: 404
    else
      raise exception
    end
  end
end
