class ContactController < ApplicationController

  respond_to :html

  def create
    if message.valid?
      flash[:success] = "Ok, we've got it!"
    else
      flash[:error] = "Uh oh, something's up."
    end
    
    respond_to do |format|
      format.html { redirect_to(root_path) }
    end
  end

  protected

  def message
    Message.new(params[:message] || {})
  end
  helper_method :message

end
