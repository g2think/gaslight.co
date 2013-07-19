# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sentry-raven"
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Noah Kantrowitz"]
  s.date = "2013-07-19"
  s.email = "noah@coderanger.net"
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["lib/raven", "lib/raven/client.rb", "lib/raven/configuration.rb", "lib/raven/error.rb", "lib/raven/event.rb", "lib/raven/interfaces", "lib/raven/interfaces/exception.rb", "lib/raven/interfaces/http.rb", "lib/raven/interfaces/message.rb", "lib/raven/interfaces/stack_trace.rb", "lib/raven/interfaces.rb", "lib/raven/linecache.rb", "lib/raven/logger.rb", "lib/raven/processor.rb", "lib/raven/processors", "lib/raven/processors/sanitizedata.rb", "lib/raven/rack.rb", "lib/raven/rails", "lib/raven/rails/middleware", "lib/raven/rails/middleware/debug_exceptions_catcher.rb", "lib/raven/railtie.rb", "lib/raven/version.rb", "lib/raven.rb", "README.md", "LICENSE"]
  s.homepage = "http://github.com/getsentry/raven-ruby"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "A gem that provides a client interface for the Sentry error logger"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8.0.rc2"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.8.0.rc2"])
      s.add_dependency(%q<uuidtools>, [">= 0"])
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<hashie>, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.8.0.rc2"])
    s.add_dependency(%q<uuidtools>, [">= 0"])
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<hashie>, [">= 0"])
  end
end
