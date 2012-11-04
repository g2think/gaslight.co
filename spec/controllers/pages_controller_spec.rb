require 'spec_helper'

describe PagesController do
  describe "GET to .pdf" do
    context "when no template exists" do
      before(:each) do
        get :show, id: 'DayofRuby-SetupInstructions', format: 'pdf'
      end

      it "returns a 404" do
        response.response_code.should eq(404)
      end
    end
  end
end
