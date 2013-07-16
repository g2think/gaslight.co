# encoding: UTF-8
require 'find'

class FilePost
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
      return FilePost.new(path) if path =~ /#{search_path}/
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
    Renderer.render(new_body)
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

  def has_yaml?
    (body =~ /^---/).present?
  end

  def yaml_data

  end

end

