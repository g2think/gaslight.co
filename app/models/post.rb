# encoding: UTF-8
require 'find'
require 'redcarpet'
require 'pygments'

class HTMLwithPygments < Redcarpet::Render::HTML
  include Redcarpet::Render::SmartyPants

  def block_code(code, language)
    Pygments.highlight(code, lexer: language)
  end
end

class Post

  def self.dir
    "tmp/posts/posts"
  end

  def self.all
    Dir.glob("#{dir}/*.md")
  end

  def self.recent
    all[-4..-1]
  end

  def self.find(search_path)
    Find.find(dir) do |path|
      return Post.new(path) if path =~ /#{search_path}/
    end
  end

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def file
    @file ||= File.new(path)
  end

  def body
    file.read
  end

  def slug
    File.basename(file, ".*")
  end

  def title
    t = slug.gsub(/\d{4}-\d{2}-\d{2}-/, '').gsub(/-/, ' ')
    t.blank? ? "No Title" : t
  end

  def to_html
    new_body = body.gsub(/\.\s /, ". ")
    renderer.render(new_body)
  end

  def author
    "Chris Moore"
  end

  def author_email
    # FIXME
    "chrism@gaslight.co"
  end

  def posted_on
    1.week.ago.to_date
  end

  private

  def renderer
    options = { no_intra_emphasis: true, fenced_code_blocks: true }
    @renderer = Redcarpet::Markdown.new(HTMLwithPygments, options)
  end
end

