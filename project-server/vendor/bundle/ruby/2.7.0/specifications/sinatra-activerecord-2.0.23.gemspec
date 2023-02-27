# -*- encoding: utf-8 -*-
# stub: sinatra-activerecord 2.0.23 ruby lib

Gem::Specification.new do |s|
  s.name = "sinatra-activerecord".freeze
  s.version = "2.0.23"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Blake Mizerany".freeze, "Janko Marohni\u0107".freeze, "Axel Kee".freeze]
  s.date = "2021-05-12"
  s.description = "Extends Sinatra with ActiveRecord helpers.".freeze
  s.email = "axel@rubyyagi.com".freeze
  s.homepage = "http://github.com/sinatra-activerecord/sinatra-activerecord".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "3.3.25".freeze
  s.summary = "Extends Sinatra with ActiveRecord helpers.".freeze

  s.installed_by_version = "3.3.25" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<sinatra>.freeze, [">= 1.0"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.1"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
  else
    s.add_dependency(%q<sinatra>.freeze, [">= 1.0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 4.1"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
  end
end
