class Post < ActiveRecord::Base

  def self.published
    where(published: true)
  end

  def self.recent(max = 5)
    published.order('published_at desc').limit(max)
  end

  validates_presence_of :title, :body
  validates_length_of :title, maximum: 255

  after_validation :update_html

  def published_on
    (published_at || Time.now).to_date
  end

  def title
    read_attribute(:title) || ""
  end

  private

  def update_html
    return true if body.nil?
    self.html = Renderer.render(body)
  end
end

