# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "warden-github-rails"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philipe Fatio"]
  s.date = "2013-07-20"
  s.description = "An easy drop in solution for rails to use GitHub authentication."
  s.email = ["me@phili.pe"]
  s.files = [".gitignore", ".rspec", ".travis.yml", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "VERSION", "lib/warden/github/rails.rb", "lib/warden/github/rails/config.rb", "lib/warden/github/rails/controller_helpers.rb", "lib/warden/github/rails/railtie.rb", "lib/warden/github/rails/routes.rb", "lib/warden/github/rails/test_helpers.rb", "lib/warden/github/rails/test_helpers/mock_user.rb", "lib/warden/github/rails/version.rb", "spec/integration/controller_helpers_spec.rb", "spec/integration/membership_spec.rb", "spec/integration/route_spec.rb", "spec/integration/scope_spec.rb", "spec/integration/view_helpers_spec.rb", "spec/rails_app/app/controllers/scoped_controller.rb", "spec/rails_app/app/controllers/unscoped_controller.rb", "spec/rails_app/app/controllers/view_tests_controller.rb", "spec/rails_app/app/views/view_tests/authenticated.html.erb", "spec/rails_app/app/views/view_tests/user.html.erb", "spec/rails_app/config.ru", "spec/rails_app/config/application.rb", "spec/rails_app/config/boot.rb", "spec/rails_app/config/environment.rb", "spec/rails_app/config/environments/development.rb", "spec/rails_app/config/environments/production.rb", "spec/rails_app/config/environments/test.rb", "spec/rails_app/config/initializers/secret_token.rb", "spec/rails_app/config/initializers/session_store.rb", "spec/rails_app/config/initializers/warden_github_rails.rb", "spec/rails_app/config/initializers/wrap_parameters.rb", "spec/rails_app/config/routes.rb", "spec/rails_app/script/rails", "spec/spec_helper.rb", "spec/unit/config_spec.rb", "spec/unit/mock_user_spec.rb", "spec/unit/rails_spec.rb", "spec/unit/test_helpers_spec.rb", "warden-github-rails.gemspec"]
  s.homepage = "https://github.com/fphilipe/warden-github-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "An easy drop in solution for rails to use GitHub authentication."
  s.test_files = ["spec/integration/controller_helpers_spec.rb", "spec/integration/membership_spec.rb", "spec/integration/route_spec.rb", "spec/integration/scope_spec.rb", "spec/integration/view_helpers_spec.rb", "spec/rails_app/app/controllers/scoped_controller.rb", "spec/rails_app/app/controllers/unscoped_controller.rb", "spec/rails_app/app/controllers/view_tests_controller.rb", "spec/rails_app/app/views/view_tests/authenticated.html.erb", "spec/rails_app/app/views/view_tests/user.html.erb", "spec/rails_app/config.ru", "spec/rails_app/config/application.rb", "spec/rails_app/config/boot.rb", "spec/rails_app/config/environment.rb", "spec/rails_app/config/environments/development.rb", "spec/rails_app/config/environments/production.rb", "spec/rails_app/config/environments/test.rb", "spec/rails_app/config/initializers/secret_token.rb", "spec/rails_app/config/initializers/session_store.rb", "spec/rails_app/config/initializers/warden_github_rails.rb", "spec/rails_app/config/initializers/wrap_parameters.rb", "spec/rails_app/config/routes.rb", "spec/rails_app/script/rails", "spec/spec_helper.rb", "spec/unit/config_spec.rb", "spec/unit/mock_user_spec.rb", "spec/unit/rails_spec.rb", "spec/unit/test_helpers_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.12"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.2"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.6"])
      s.add_development_dependency(%q<addressable>, ["~> 2.3"])
      s.add_runtime_dependency(%q<warden-github>, ["~> 0.14.0"])
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.12"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.2"])
      s.add_dependency(%q<rack-test>, ["~> 0.6"])
      s.add_dependency(%q<addressable>, ["~> 2.3"])
      s.add_dependency(%q<warden-github>, ["~> 0.14.0"])
      s.add_dependency(%q<railties>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.12"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.2"])
    s.add_dependency(%q<rack-test>, ["~> 0.6"])
    s.add_dependency(%q<addressable>, ["~> 2.3"])
    s.add_dependency(%q<warden-github>, ["~> 0.14.0"])
    s.add_dependency(%q<railties>, [">= 3.1"])
  end
end
