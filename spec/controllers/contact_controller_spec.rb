require 'spec_helper'

describe ContactController do

  describe "GET 'create'" do
    context "when valid" do
      before(:each) do
        post :create, message: { name: 'Chris Moore', email: 'chris@cdmwebs.com', body: 'This is the body' }
      end

      it { should respond_with(:redirect) }
      it { should set_the_flash }
    end

    context "when invalid" do
      before(:each) do
        post :create
      end

      it { should respond_with(:redirect) }
      it { should set_the_flash }
    end
  end
end
