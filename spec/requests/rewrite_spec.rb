require 'spec_helper'

describe "URL Rewriting" do
  it "rewrites old blog requests to the new subdomain" do
    get 'http://blog.gaslightsoftware.com/post/12345'
    response.response_code.should == 301
    response.location.should match('blog.gaslight.co')
  end

  it "redirects old site requests to the new site" do
    get 'http://gaslightsoftware.com/post/12345'
    response.response_code.should == 301
    response.location.should == 'http://gaslight.co/post/12345'
  end

  it "doesn't redirect requests to gaslight.co to blog.gaslight.co" do
    get 'http://gaslight.co/'
    response.should_not be_redirect
  end
end
