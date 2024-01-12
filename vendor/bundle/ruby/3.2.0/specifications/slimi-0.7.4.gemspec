# -*- encoding: utf-8 -*-
# stub: slimi 0.7.4 ruby lib

Gem::Specification.new do |s|
  s.name = "slimi".freeze
  s.version = "0.7.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/r7kamura/slimi/blob/main/CHANGELOG.md", "homepage_uri" => "https://github.com/r7kamura/slimi", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/r7kamura/slimi" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryo Nakamura".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-03-21"
  s.email = ["r7kamura@gmail.com".freeze]
  s.executables = ["slimi".freeze]
  s.files = ["exe/slimi".freeze]
  s.homepage = "https://github.com/r7kamura/slimi".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.4.10".freeze
  s.summary = "Yet another implementation for Slim template language.".freeze

  s.installed_by_version = "3.4.10" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<temple>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<tilt>.freeze, [">= 0"])
end
