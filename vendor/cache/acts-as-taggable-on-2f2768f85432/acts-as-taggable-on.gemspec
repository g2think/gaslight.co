# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "acts-as-taggable-on"
  s.version = "2.4.2.pre"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh", "Joost Baaij"]
  s.date = "2013-07-19"
  s.description = "With ActsAsTaggableOn, you can tag a single model on several contexts, such as skills, interests, and awards. It also provides other advanced functionality."
  s.email = ["michael@intridea.com", "joost@spacebabies.nl"]
  s.files = [".gitignore", ".rspec", ".travis.yml", "Appraisals", "Gemfile", "Guardfile", "LICENSE.md", "README.md", "Rakefile", "acts-as-taggable-on.gemspec", "gemfiles/rails_3.gemfile", "gemfiles/rails_4.gemfile", "lib/acts-as-taggable-on.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/cache.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/collection.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/compatibility.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/core.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/dirty.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/ownership.rb", "lib/acts_as_taggable_on/acts_as_taggable_on/related.rb", "lib/acts_as_taggable_on/tag.rb", "lib/acts_as_taggable_on/tag_list.rb", "lib/acts_as_taggable_on/taggable.rb", "lib/acts_as_taggable_on/tagger.rb", "lib/acts_as_taggable_on/tagging.rb", "lib/acts_as_taggable_on/tags_helper.rb", "lib/acts_as_taggable_on/utils.rb", "lib/acts_as_taggable_on/version.rb", "lib/generators/acts_as_taggable_on/migration/migration_generator.rb", "lib/generators/acts_as_taggable_on/migration/templates/active_record/migration.rb", "spec/acts_as_taggable_on/acts_as_taggable_on_spec.rb", "spec/acts_as_taggable_on/acts_as_tagger_spec.rb", "spec/acts_as_taggable_on/caching_spec.rb", "spec/acts_as_taggable_on/related_spec.rb", "spec/acts_as_taggable_on/single_table_inheritance_spec.rb", "spec/acts_as_taggable_on/tag_list_spec.rb", "spec/acts_as_taggable_on/tag_spec.rb", "spec/acts_as_taggable_on/taggable_spec.rb", "spec/acts_as_taggable_on/tagger_spec.rb", "spec/acts_as_taggable_on/tagging_spec.rb", "spec/acts_as_taggable_on/tags_helper_spec.rb", "spec/acts_as_taggable_on/utils_spec.rb", "spec/bm.rb", "spec/database.yml.sample", "spec/generators/acts_as_taggable_on/migration/migration_generator_spec.rb", "spec/models.rb", "spec/schema.rb", "spec/spec_helper.rb"]
  s.homepage = "https://github.com/mbleigh/acts-as-taggable-on"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Advanced tagging for Rails."
  s.test_files = ["spec/acts_as_taggable_on/acts_as_taggable_on_spec.rb", "spec/acts_as_taggable_on/acts_as_tagger_spec.rb", "spec/acts_as_taggable_on/caching_spec.rb", "spec/acts_as_taggable_on/related_spec.rb", "spec/acts_as_taggable_on/single_table_inheritance_spec.rb", "spec/acts_as_taggable_on/tag_list_spec.rb", "spec/acts_as_taggable_on/tag_spec.rb", "spec/acts_as_taggable_on/taggable_spec.rb", "spec/acts_as_taggable_on/tagger_spec.rb", "spec/acts_as_taggable_on/tagging_spec.rb", "spec/acts_as_taggable_on/tags_helper_spec.rb", "spec/acts_as_taggable_on/utils_spec.rb", "spec/bm.rb", "spec/database.yml.sample", "spec/generators/acts_as_taggable_on/migration/migration_generator_spec.rb", "spec/models.rb", "spec/schema.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["< 5", ">= 3"])
      s.add_development_dependency(%q<rspec-rails>, ["= 2.13.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<ammeter>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<mysql2>, ["~> 0.3.7"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["< 5", ">= 3"])
      s.add_dependency(%q<rspec-rails>, ["= 2.13.0"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<ammeter>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<mysql2>, ["~> 0.3.7"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["< 5", ">= 3"])
    s.add_dependency(%q<rspec-rails>, ["= 2.13.0"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<ammeter>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<mysql2>, ["~> 0.3.7"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end
