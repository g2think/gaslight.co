require 'spec_helper'

describe Message do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }

  describe ".new" do
    let(:message) { Message.new(name: 'Chris Moore',
                                email: 'chris@cdmwebs.com',
                                project: 'This is some content') }

    it "is valid with normal attributes" do
      message.name.should_not be_empty
      message.email.should_not be_empty
      message.project.should_not be_empty
    end
  end
end
