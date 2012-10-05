require 'spec_helper'

describe PagesController do
  describe "GET 'junk'" do
    before(:each) { get :render_404 }

    it { should respond_with(404) }
    it { should render_template(:home) }
  end
end
