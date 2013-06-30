class Post < ActiveRecord::Base

  def self.published
    where(published: true)
  end

  def self.by_publish_date
    order('published_at desc')
  end

  def self.recent(max = 5)
    published.by_publish_date.limit(max)
  end

  def self.tagged(tag)
    tag ? tagged_with(tag.split) : scoped
  end

  validates_presence_of :title, :body
  validates_length_of :title, maximum: 255

  after_validation :update_html
  attr_taggable :tags

  def published_on
    (published_at || Time.now).to_date
  end

  def title
    read_attribute(:title) || ""
  end

  def tag_list
    tags = self.tags
    tags.empty? ? nil : tags.join(', ')
  end

  def tag_list=(list)
    list.gsub!(/,\Z/, '')
    self.tags = list
  end

  private

  def update_html
    return true if body.nil?
    self.html = Renderer.render(body)
  end
end

