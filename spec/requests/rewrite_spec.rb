require 'spec_helper'

describe "URL Rewriting" do
  context "route not found" do
    it "returns a 404 and shows the landing page" do
      get 'http://gaslight.co/foo-bar'
      response.response_code.should == 404
    end
  end

  context "blog.gaslightsoftware.com" do
    it "rewrites old blog requests to the new subdomain" do
      get 'http://blog.gaslightsoftware.com/post/12345'
      response.response_code.should == 301
      response.location.should match('blog.gaslight.co')
    end
  end

  context "training.gaslightsoftware.com" do
    it "rewrites old training requests to the new subdomain" do
      get 'http://training.gaslightsoftware.com/post/12345'
      response.response_code.should == 301
      response.location.should match('training.gaslight.co')
    end
  end

  context "gaslightsoftware.com" do
    it "redirects old site requests to the new site" do
      get 'http://gaslightsoftware.com/post/12345'
      response.response_code.should == 301
      response.location.should == 'http://gaslight.co/post/12345'
    end

    it "redirects the www subdomain to gaslight.co" do
      get 'http://www.gaslightsoftware.com/something'
      response.response_code.should == 301
      response.location.should == 'http://gaslight.co/something'
    end
  end

  # CDM: I totally botched this setting it up and want to prevent it
  # from happening in the future.
  it "doesn't redirect requests to gaslight.co to blog.gaslight.co" do
    get 'http://gaslight.co/'
    response.should_not be_redirect
  end

  context "local development" do
    it "doesn't redirect requests to gaslight.dev to gaslight.co" do
      get 'http://gaslight.dev/'
      response.should_not be_redirect
    end

    it "doesn't redirect requests to localhost:3000 to gaslight.co" do
      get 'http://localhost:3000/'
      response.should_not be_redirect
    end
  end
end
