# -*- encoding: utf-8 -*-
# stub: adminlte2-rails 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "adminlte2-rails".freeze
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nicolas Besnard".freeze]
  s.date = "2015-06-05"
  s.description = "AdminLTE is a premium Bootstrap theme for Backend.".freeze
  s.email = ["besnard.nicolas@gmail.com".freeze]
  s.homepage = "https://github.com/nicolas-besnard/adminlte2-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "Integrates the AdminLTE theme with the Rails asset pipeline".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.4.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.4.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.4.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
