xml.instruct! :xml, version: "1.0" 
xml.rss version: "2.0" do
  xml.channel do
    xml.title "Gaslight Blog"
    xml.description "We build web and mobile apps in Cincinnati, Ohio. This is our blog."
    xml.link posts_url

    posts.each do |post|
      xml.item do
        xml.title post.title
        xml.author post.author_name
        xml.description post.html
        xml.pubDate post.published_at.to_s(:rfc822)
        xml.link post_url(post)
        xml.guid post_url(post)
        xml.enclosure(url: post.audio_url, type: 'audio/mpeg') if post.audio_url.present?
      end
    end
  end
end

