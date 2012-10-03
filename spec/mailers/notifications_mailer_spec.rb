require "spec_helper"

describe NotificationsMailer do
  let(:message) { Message.new(name: 'Chris Moore',
                              email: 'chris@cdmwebs.com',
                              body: 'This is the body') }
  let(:mail) { NotificationsMailer.new_message(message) }

  it 'sets the from' do
    mail.from.should == ['website@gaslight.co']
  end

  it 'sets the subject' do
    mail.subject.should =~ /\[gaslight\.co\] Contact Form submission from \"Chris Moore\" <chris@cdmwebs\.com>/
  end

  it 'sets the body' do
    mail.body.should match('the body')
  end

  it 'sends to hello@gaslight.co' do
    mail.to.should == ['hello@gaslight.co']
  end
end

