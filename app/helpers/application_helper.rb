module ApplicationHelper

  def active_page_class(path)
    "active" if current_page?(path)
  end

  def gravatar_url(email, size = "32x32")
    return "" if email.nil?
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
  end

  def viewing_blog?
    request.fullpath =~ /blog/
  end

  def tag_list(tags)
    tags.collect do |t|
      link_to(t, posts_path(tagged: t.name), class: 'tag')
    end.join(" ").html_safe
  end

  def popular_tag_links(tags)
    tags.collect do |t|
      link_to(t.name, posts_path(tagged: t.name), class: 'tag', data:{ count: t.count })
    end.join(" ").html_safe
  end

  def player_iframe(source)
    %Q{<iframe src="#{source}" frameborder="0" allowtransparency="true" scrolling="no" width="500" height="30"></iframe>}
  end
end
