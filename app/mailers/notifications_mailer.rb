class NotificationsMailer < ActionMailer::Base

  default :from => "iam007dev@gmail.com"
  default :to => "vikramhimanshu@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "#{message.subject}")
  end

end
