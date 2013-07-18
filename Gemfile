source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '~> 3.2.0'
gem 'jquery-rails'
gem 'thin'
gem 'haml-rails'
gem 'high_voltage', '>= 1.2.0'
gem 'rdiscount'
gem 'rails-backbone'
gem 'rack-rewrite'
gem 'pg'
gem 'activeadmin'
gem 'decent_exposure'

gem 'redcarpet', require: false
gem 'pygments.rb', require: false

gem 'foundation_rails_helper', git: 'https://github.com/sgruhier/foundation_rails_helper.git'
gem 'sentry-raven', git: 'https://github.com/getsentry/raven-ruby.git'
gem 'rocket_tag', github: 'bradphelan/rocket_tag'
gem 'stringex'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'sass-rails',   '~> 3.2.0'
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

