class ContactController < ApplicationController

  def create
    respond_to do |format|
      if message.process
        flash[:success] = "Ok, we've got it!"
        @message = Message.new
        format.html { redirect_to root_path }
        format.js
      else
        format.html { render template: 'pages/home', layout: false }
        format.js { render template: 'contact/create' }
      end
    end
  end

  protected

  def message
    @message ||= Message.new(params[:message] || {})
    @message.remote_ip = request.remote_ip
    @message.user_agent = request.user_agent
    @message
  end
  helper_method :message

end
