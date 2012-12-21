require 'spec_helper'

describe Message do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:phone) }
  it { should validate_presence_of(:project) }
  it { should validate_presence_of(:timeline) }
  it { should validate_presence_of(:budget) }

  describe ".new" do
    let(:message) { Message.new(name: 'Chris Moore',
                                email: 'chris@cdmwebs.com',
                                body: 'This is some content') }

    it "is valid with normal attributes" do
      message.name.should_not be_empty
      message.email.should_not be_empty
      message.body.should_not be_empty
    end
  end
end
