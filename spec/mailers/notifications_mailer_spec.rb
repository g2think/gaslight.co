require "spec_helper"

describe NotificationsMailer do
  let(:request) { MailRequest.new }
  let(:message) { Message.new(name: 'Chris Moore',
                              email: 'chris@cdmwebs.com',
                              remote_ip: "10.203.1.55",
                              user_agent: "Mozilla",
                              body: 'This is the body') }
  let(:mail) { NotificationsMailer.new_message(message) }

  it 'sets the from' do
    mail.from.should include('hello@gaslight.co')
  end

  it 'sets the subject' do
    mail.subject.should match("Contact Form")
  end

  it 'sets the body' do
    mail.body.should match('the body')
  end

  it 'sends to hello@gaslight.co' do
    mail.to.should include('chris@cdmwebs.com')
  end

  it 'sets the IP' do
    mail.body.should match('10.203.1.55')
  end
end

