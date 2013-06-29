require 'redcarpet'
require 'pygments'

class Post

  def self.all
    Dir.glob('tmp/posts/posts/*.md')
  end

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def body
    File.read(path)
  end

  def to_html
    renderer.render(body)
  end

  private

  def renderer
    @renderer = Redcarpet::Markdown.new(HTMLwithPygments, fenced_code_blocks: true)
  end
end


class HTMLwithPygments < Redcarpet::Render::HTML
  include Redcarpet::Render::SmartyPants

  def block_code(code, language)
    Pygments.highlight(code, lexer: language)
  end
end

