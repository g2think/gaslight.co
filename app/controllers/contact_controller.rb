class ContactController < ApplicationController

  def create
    if message.valid?
      NotificationsMailer.new_message(message).deliver
      flash[:success] = "Ok, we've got it!"
    else
      flash[:error] = "Uh oh, something's up."
      message_params = { message: params[:message] }
    end
    
    respond_to do |format|
      format.html { redirect_to(root_path(message_params)) }
    end
  end

  protected

  def message
    @message ||= Message.new(params[:message] || {})
  end
  helper_method :message

end
