class ContactController < ApplicationController

  def create
    respond_to do |format|
      if message.valid?
        NotificationsMailer.new_message(message).deliver
        flash[:success] = "Ok, we've got it!"
        format.html { redirect_to root_path }
      else
        format.html { render template: 'pages/home', layout: false }
      end
    end
  end

  protected

  def message
    @message ||= Message.new(params[:message] || {})
  end
  helper_method :message

end
