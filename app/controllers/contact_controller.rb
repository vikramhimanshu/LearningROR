class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message= Message.new(params[:message])
    if !@message.blank?
      logger.debug "New Message Pass: #{@message.inspect}"
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      logger.debug "New Message Failed: #{@message.inspect}"
      flash.now[:error] = "Please fill all the fields."
      render :new
    end
  end

end
