Warden::GitHub::Rails.setup do |config|
  config.add_scope :user, client_id: ENV.fetch('GITHUB_KEY'),
    client_secret: ENV.fetch('GITHUB_SECRET'),
    redirect_uri: '/login'
  config.add_team :gaslight, 64763
end

