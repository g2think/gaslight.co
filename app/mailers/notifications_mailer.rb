class NotificationsMailer < ActionMailer::Base
  default from: "website@gaslight.co"
  default to: "hello@gaslight.co"

  def new_message(message)
    mail(from: %Q{"#{message.name}" <#{message.email}>},
         subject: "[gaslight.co] Contact Form",
         body: message.body)
  end
end
