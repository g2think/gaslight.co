require 'spec_helper'

describe Post do
  its(:published_on) { should == Date.today }
  its(:title) { should == "" }
  its(:tag_list) { should be_empty }

  describe 'validation' do
    it { should have(1).error_on(:title) }
    it { should have(1).error_on(:body) }
    it { should have(1).error_on(:author) }
  end

  describe 'rendering html' do
    let(:test_html) { "<h1>Testing the HTML</h1>\n" }

    before do
      subject.title = 'Test Post'
      subject.author = 'cdmwebs'
      subject.body = '# Testing the HTML'
      subject.save
    end

    its(:html) { should == test_html }
  end

  describe 'class methods' do
    # TODO: do a bunch of crazy setup and testing
 
    it 'returns published posts' do
      Post.published.should be_empty
    end

    it 'returns recent posts' do
      Post.recent.should be_empty
    end

    it 'returns tagged posts' do
      Post.tagged('test').should be_empty
    end

    it 'returns matching posts' do
      Post.search('test').should be_empty
    end

    it 'returns posts written by an author' do
      Post.written_by('test').should be_empty
    end
  end
end
