Airbrake.configure do |config|
  config.api_key     = ENV.fetch('ERRBIT_API_KEY')
  config.host        = ENV.fetch('ERRBIT_HOST')
  config.port        = 80
  config.secure      = config.port == 443
end
