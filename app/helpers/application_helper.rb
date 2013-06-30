module ApplicationHelper
  def active_page_class(path)
    "active" if current_page?(path) 
  end

  def gravatar_url(email, size = "32x32")
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
  end

  def viewing_blog?
    request.fullpath =~ /blog/
  end

  def tag_list(tags)
    tags.collect { |t| link_to(t, posts_path(tagged: t)) }.join(" ").html_safe
  end

  def popular_tags(tags)
    tags.collect { |t| link_to(t.name, posts_path(tagged: t.name)) }.join(" ").html_safe
  end
end
