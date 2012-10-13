class NotificationsMailer < ActionMailer::Base
  default from: "Gaslight Website <hello@gaslight.co>"
  default to: "hello@gaslight.co"

  def new_message(message)
    @name = message.name
    @email = message.email
    @body = message.body
    @ip_address = message.remote_ip
    @user_agent = message.user_agent

    @email_with_name = "#{@name} <#{@email}>".html_safe

    mail(subject: "Fwd: Contact Form",
         bcc: ENV.fetch('HIGHRISE_DROPBOX'),
         to: @email_with_name)
  end
end
