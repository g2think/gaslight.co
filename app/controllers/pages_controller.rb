class PagesController < HighVoltage::PagesController
  layout :layout_for_page
  caches_page :show

  protected

  def layout_for_page
    case params[:id]
    when 'home'
      'home'
    when 'coffee'
      nil
    else
      'application'
    end
  end

  def message
    Message.new(params[:message] || {})
  end
  helper_method :message

  rescue_from ActionView::MissingTemplate do |exception|
    if exception.message =~ %r{Missing template #{content_path}}
      render action: :home, status: 404, layout: false
    else
      raise exception
    end
  end
end
