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
    tag ? published.tagged_with(tag.split) : scoped
  end

  def self.search(query)
    published.where('lower(posts.body) like lower(?)', "% #{query} %")
  end

  def self.written_by(author)
    published.where(author: author).by_publish_date
  end

  validates_presence_of :title, :body, :author
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
    tags.empty? ? [] : tags.join(', ')
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

