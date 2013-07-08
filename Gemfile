source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.11'
gem 'jquery-rails'
gem 'thin'
gem 'haml-rails'
gem 'coffee-filter'
gem 'high_voltage', '>= 1.2.0'
gem 'rdiscount'
gem 'rails-backbone'
gem 'rack-rewrite'
gem 'coffee-rails', '~> 3.2.1'
gem 'pg'
gem 'activeadmin'

gem 'tumblr_client', require: false
gem 'redcarpet', require: false
gem 'pygments.rb', require: false

gem 'foundation_rails_helper', git: 'https://github.com/sgruhier/foundation_rails_helper.git'
gem 'sentry-raven', git: 'https://github.com/getsentry/raven-ruby.git'
gem 'rocket_tag', github: 'bradphelan/rocket_tag'
gem 'stringex'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails', '~> 1.0.3'
  gem 'zurb-foundation'
end

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 2.9.0'
  gem 'dotenv'
  gem 'konacha'
end

group :test do
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'poltergeist'
  gem 'factory_girl_rails'
  gem 'timecop'
  gem 'shoulda-matchers'
  gem 'launchy'
  gem 'database_cleaner'
end

group :staging, :production do
  gem 'newrelic_rpm'
  gem 'rails_on_heroku'
end

