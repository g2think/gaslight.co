require 'capybara/poltergeist'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# Can also use :chrome
Capybara.javascript_driver = :poltergeist

