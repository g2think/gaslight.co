# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "shoulda-matchers"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tammer Saleh", "Joe Ferris", "Ryan McGeary", "Dan Croak", "Matt Jankowski", "Stafford Brunk"]
  s.date = "2013-07-19"
  s.description = "Making tests easy on the fingers and eyes"
  s.email = "support@thoughtbot.com"
  s.files = [".gitignore", ".travis.yml", "Appraisals", "CONTRIBUTING.md", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "NEWS.md", "README.md", "Rakefile", "features/rails_integration.feature", "features/step_definitions/rails_steps.rb", "features/support/env.rb", "gemfiles/3.0.gemfile", "gemfiles/3.0.gemfile.lock", "gemfiles/3.1.gemfile", "gemfiles/3.1.gemfile.lock", "gemfiles/3.2.gemfile", "gemfiles/3.2.gemfile.lock", "gemfiles/4.0.gemfile", "gemfiles/4.0.gemfile.lock", "lib/shoulda-matchers.rb", "lib/shoulda/matchers.rb", "lib/shoulda/matchers/action_controller.rb", "lib/shoulda/matchers/action_controller/filter_param_matcher.rb", "lib/shoulda/matchers/action_controller/redirect_to_matcher.rb", "lib/shoulda/matchers/action_controller/render_template_matcher.rb", "lib/shoulda/matchers/action_controller/render_with_layout_matcher.rb", "lib/shoulda/matchers/action_controller/respond_with_matcher.rb", "lib/shoulda/matchers/action_controller/route_matcher.rb", "lib/shoulda/matchers/action_controller/set_session_matcher.rb", "lib/shoulda/matchers/action_controller/set_the_flash_matcher.rb", "lib/shoulda/matchers/active_model.rb", "lib/shoulda/matchers/active_model/allow_mass_assignment_of_matcher.rb", "lib/shoulda/matchers/active_model/allow_value_matcher.rb", "lib/shoulda/matchers/active_model/disallow_value_matcher.rb", "lib/shoulda/matchers/active_model/ensure_exclusion_of_matcher.rb", "lib/shoulda/matchers/active_model/ensure_inclusion_of_matcher.rb", "lib/shoulda/matchers/active_model/ensure_length_of_matcher.rb", "lib/shoulda/matchers/active_model/errors.rb", "lib/shoulda/matchers/active_model/exception_message_finder.rb", "lib/shoulda/matchers/active_model/helpers.rb", "lib/shoulda/matchers/active_model/odd_even_number_matcher.rb", "lib/shoulda/matchers/active_model/only_integer_matcher.rb", "lib/shoulda/matchers/active_model/validate_acceptance_of_matcher.rb", "lib/shoulda/matchers/active_model/validate_confirmation_of_matcher.rb", "lib/shoulda/matchers/active_model/validate_numericality_of_matcher.rb", "lib/shoulda/matchers/active_model/validate_presence_of_matcher.rb", "lib/shoulda/matchers/active_model/validate_uniqueness_of_matcher.rb", "lib/shoulda/matchers/active_model/validation_matcher.rb", "lib/shoulda/matchers/active_model/validation_message_finder.rb", "lib/shoulda/matchers/active_record.rb", "lib/shoulda/matchers/active_record/accept_nested_attributes_for_matcher.rb", "lib/shoulda/matchers/active_record/association_matcher.rb", "lib/shoulda/matchers/active_record/have_db_column_matcher.rb", "lib/shoulda/matchers/active_record/have_db_index_matcher.rb", "lib/shoulda/matchers/active_record/have_readonly_attribute_matcher.rb", "lib/shoulda/matchers/active_record/serialize_matcher.rb", "lib/shoulda/matchers/assertion_error.rb", "lib/shoulda/matchers/integrations/rspec.rb", "lib/shoulda/matchers/integrations/test_unit.rb", "lib/shoulda/matchers/rails_shim.rb", "lib/shoulda/matchers/version.rb", "shoulda-matchers.gemspec", "spec/shoulda/active_model/validate_uniqueness_of_matcher_spec.rb", "spec/shoulda/matchers/action_controller/filter_param_matcher_spec.rb", "spec/shoulda/matchers/action_controller/redirect_to_matcher_spec.rb", "spec/shoulda/matchers/action_controller/render_template_matcher_spec.rb", "spec/shoulda/matchers/action_controller/render_with_layout_matcher_spec.rb", "spec/shoulda/matchers/action_controller/respond_with_matcher_spec.rb", "spec/shoulda/matchers/action_controller/route_matcher_spec.rb", "spec/shoulda/matchers/action_controller/set_session_matcher_spec.rb", "spec/shoulda/matchers/action_controller/set_the_flash_matcher_spec.rb", "spec/shoulda/matchers/active_model/allow_mass_assignment_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/allow_value_matcher_spec.rb", "spec/shoulda/matchers/active_model/disallow_value_matcher_spec.rb", "spec/shoulda/matchers/active_model/ensure_exclusion_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/ensure_inclusion_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/ensure_length_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/exception_message_finder_spec.rb", "spec/shoulda/matchers/active_model/helpers_spec.rb", "spec/shoulda/matchers/active_model/odd_even_number_matcher_spec.rb", "spec/shoulda/matchers/active_model/only_integer_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_acceptance_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_confirmation_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_numericality_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_presence_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_uniqueness_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validation_message_finder_spec.rb", "spec/shoulda/matchers/active_record/accept_nested_attributes_for_matcher_spec.rb", "spec/shoulda/matchers/active_record/association_matcher_spec.rb", "spec/shoulda/matchers/active_record/have_db_column_matcher_spec.rb", "spec/shoulda/matchers/active_record/have_db_index_matcher_spec.rb", "spec/shoulda/matchers/active_record/have_readonly_attributes_matcher_spec.rb", "spec/shoulda/matchers/active_record/serialize_matcher_spec.rb", "spec/spec_helper.rb", "spec/support/active_model_versions.rb", "spec/support/activemodel_helpers.rb", "spec/support/class_builder.rb", "spec/support/controller_builder.rb", "spec/support/i18n_faker.rb", "spec/support/mailer_builder.rb", "spec/support/model_builder.rb"]
  s.homepage = "http://thoughtbot.com/community/"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.0.3"
  s.summary = "Making tests easy on the fingers and eyes"
  s.test_files = ["features/rails_integration.feature", "features/step_definitions/rails_steps.rb", "features/support/env.rb", "spec/shoulda/active_model/validate_uniqueness_of_matcher_spec.rb", "spec/shoulda/matchers/action_controller/filter_param_matcher_spec.rb", "spec/shoulda/matchers/action_controller/redirect_to_matcher_spec.rb", "spec/shoulda/matchers/action_controller/render_template_matcher_spec.rb", "spec/shoulda/matchers/action_controller/render_with_layout_matcher_spec.rb", "spec/shoulda/matchers/action_controller/respond_with_matcher_spec.rb", "spec/shoulda/matchers/action_controller/route_matcher_spec.rb", "spec/shoulda/matchers/action_controller/set_session_matcher_spec.rb", "spec/shoulda/matchers/action_controller/set_the_flash_matcher_spec.rb", "spec/shoulda/matchers/active_model/allow_mass_assignment_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/allow_value_matcher_spec.rb", "spec/shoulda/matchers/active_model/disallow_value_matcher_spec.rb", "spec/shoulda/matchers/active_model/ensure_exclusion_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/ensure_inclusion_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/ensure_length_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/exception_message_finder_spec.rb", "spec/shoulda/matchers/active_model/helpers_spec.rb", "spec/shoulda/matchers/active_model/odd_even_number_matcher_spec.rb", "spec/shoulda/matchers/active_model/only_integer_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_acceptance_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_confirmation_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_numericality_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_presence_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validate_uniqueness_of_matcher_spec.rb", "spec/shoulda/matchers/active_model/validation_message_finder_spec.rb", "spec/shoulda/matchers/active_record/accept_nested_attributes_for_matcher_spec.rb", "spec/shoulda/matchers/active_record/association_matcher_spec.rb", "spec/shoulda/matchers/active_record/have_db_column_matcher_spec.rb", "spec/shoulda/matchers/active_record/have_db_index_matcher_spec.rb", "spec/shoulda/matchers/active_record/have_readonly_attributes_matcher_spec.rb", "spec/shoulda/matchers/active_record/serialize_matcher_spec.rb", "spec/spec_helper.rb", "spec/support/active_model_versions.rb", "spec/support/activemodel_helpers.rb", "spec/support/class_builder.rb", "spec/support/controller_builder.rb", "spec/support/i18n_faker.rb", "spec/support/mailer_builder.rb", "spec/support/model_builder.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_development_dependency(%q<appraisal>, ["~> 0.4"])
      s.add_development_dependency(%q<aruba>, [">= 0"])
      s.add_development_dependency(%q<bourne>, ["~> 1.3"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.1"])
      s.add_development_dependency(%q<rails>, ["~> 3.0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
      s.add_development_dependency(%q<rspec-rails>, ["< 3", ">= 2.13.1"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<appraisal>, ["~> 0.4"])
      s.add_dependency(%q<aruba>, [">= 0"])
      s.add_dependency(%q<bourne>, ["~> 1.3"])
      s.add_dependency(%q<bundler>, ["~> 1.1"])
      s.add_dependency(%q<cucumber>, ["~> 1.1"])
      s.add_dependency(%q<rails>, ["~> 3.0"])
      s.add_dependency(%q<rake>, [">= 0.9.2"])
      s.add_dependency(%q<rspec-rails>, ["< 3", ">= 2.13.1"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<appraisal>, ["~> 0.4"])
    s.add_dependency(%q<aruba>, [">= 0"])
    s.add_dependency(%q<bourne>, ["~> 1.3"])
    s.add_dependency(%q<bundler>, ["~> 1.1"])
    s.add_dependency(%q<cucumber>, ["~> 1.1"])
    s.add_dependency(%q<rails>, ["~> 3.0"])
    s.add_dependency(%q<rake>, [">= 0.9.2"])
    s.add_dependency(%q<rspec-rails>, ["< 3", ">= 2.13.1"])
  end
end
