# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "foundation_rails_helper"
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sebastien Gruhier"]
  s.date = "2013-07-19"
  s.description = "Rails for zurb foundation CSS framework. Form builder, flash message, ..."
  s.email = ["sebastien.gruhier@xilinus.com"]
  s.files = [".gitignore", ".rspec", ".travis.yml", "CHANGELOG.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "foundation_rails_helper.gemspec", "lib/foundation_rails_helper.rb", "lib/foundation_rails_helper/action_view_extension.rb", "lib/foundation_rails_helper/flash_helper.rb", "lib/foundation_rails_helper/form_builder.rb", "lib/foundation_rails_helper/version.rb", "lib/railtie.rb", "spec/foundation_rails_helper/flash_helper_spec.rb", "spec/foundation_rails_helper/form_builder_spec.rb", "spec/spec_helper.rb", "spec/support/mock_rails.rb"]
  s.homepage = "http://github.com/sgruhier/foundation_rails_helper"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Rails helpers for zurb foundation CSS framework"
  s.test_files = ["spec/foundation_rails_helper/flash_helper_spec.rb", "spec/foundation_rails_helper/form_builder_spec.rb", "spec/spec_helper.rb", "spec/support/mock_rails.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.0"])
      s.add_runtime_dependency(%q<actionpack>, [">= 3.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
    else
      s.add_dependency(%q<railties>, [">= 3.0"])
      s.add_dependency(%q<actionpack>, [">= 3.0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.0"])
    s.add_dependency(%q<actionpack>, [">= 3.0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
  end
end
