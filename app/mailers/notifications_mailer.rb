class NotificationsMailer < ActionMailer::Base
  default from: "website@gaslight.co"
  default to: "hello@gaslight.co"

  def new_message(message)
    mail(subject: "[gaslight.co] Contact Form submission from #{ %Q{"#{message.name}" <#{message.email}>} }",
         body: message.body)
  end
end
