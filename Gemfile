source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'jquery-rails'
gem 'thin'
gem 'haml-rails'
gem 'coffee-filter'
gem 'high_voltage', '>= 1.2.0'
gem 'rdiscount'
gem 'airbrake'
gem 'rack-tumblr', git: 'https://github.com/divshot/rack-tumblr.git'
gem 'rails-backbone'
gem 'rack-rewrite'
gem 'foundation_rails_helper', git: 'https://github.com/sgruhier/foundation_rails_helper.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails', '~> 1.0.3'
  gem 'zurb-foundation', '~> 3.0.9'
end

group :development do
  gem 'heroku'
  gem 'foreman'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.9.0'
  gem 'dotenv'
  gem 'jasminerice'
end

group :test do
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'poltergeist'
  gem 'factory_girl_rails'
  #gem 'database_cleaner'
  gem 'timecop'
  gem 'shoulda-matchers'
  gem 'launchy'
end

group :staging, :production do
  gem 'newrelic_rpm'
end

