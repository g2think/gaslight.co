class PagesController < HighVoltage::PagesController
  layout :layout_for_page

  protected

  def layout_for_page
    case params[:id]
    when 'coffee', 'home'
      nil
    else
      'application'
    end
  end

  def message
    Message.new(params[:message] || {})
  end
  helper_method :message
end
