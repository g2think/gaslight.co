namespace :blog do
  desc 'Import markdown files in to database'
  task :import => :environment do
    tumblr = Tumblr::Client.new
    posts = tumblr.posts('teamgaslight.tumblr.com', offset: 40)['posts']

    posts.each do |p|
      if Date.parse(p['date']) >= Date.parse('2013-04-19 21:05:40 GMT')
        puts "Skipping #{p['id']}..."
        next
      end

      puts "Importing post:"
      puts p.to_yaml

      case p['type']
      when 'text'
        post = Post.create!(title: p['title'],
                            body: p['body'],
                            html: p['body'],
                            slug: p['slug'],
                            tags: p['tags'].join(","),
                            published: true,
                            published_at: p['date'])
      when 'audio'
        post = Post.create!(title: p['track_name'],
                            body: "#{p['player']} #{p['caption']}",
                            html: p['caption'],
                            slug: p['slug'],
                            tags: p['tags'].join(","),
                            published: true,
                            published_at: p['date'])
      when 'photo'
        post = Post.new(title: p['caption'][0..254],
                        html: p['caption'],
                        slug: p['slug'],
                        tags: p['tags'].join(","),
                            published: true,
                        published_at: p['date'])
        post.body = p['caption']
        p['photos'].each do |photo|
          post.body += "<img src='#{photo['original_size']['url']}' class='wide' />"
        end
        post.save!
      else 'video'
        post = Post.new(title: p['caption'].blank? ? "No Title" : p['caption'][0..254],
                        html: p['caption'],
                        slug: p['slug'],
                        tags: p['tags'].join(","),
                            published: true,
                        published_at: p['date'])

        p['player'].each do |player|
          post.body = player['embed_code'] if player['width'] == 500
        end
        post.save!
      end

      post.created_at = post.updated_at = Time.at(p['timestamp'])
      post.save!
    end
  end
end
