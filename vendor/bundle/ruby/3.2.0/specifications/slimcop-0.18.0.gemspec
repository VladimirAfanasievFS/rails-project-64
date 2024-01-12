# -*- encoding: utf-8 -*-
# stub: slimcop 0.18.0 ruby lib

Gem::Specification.new do |s|
  s.name = "slimcop".freeze
  s.version = "0.18.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/r7kamura/slimcop/blob/main/CHANGELOG.md", "homepage_uri" => "https://github.com/r7kamura/slimcop", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/r7kamura/slimcop" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryo Nakamura".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-04-03"
  s.email = ["r7kamura@gmail.com".freeze]
  s.executables = ["slimcop".freeze]
  s.files = ["exe/slimcop".freeze]
  s.homepage = "https://github.com/r7kamura/slimcop".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.4.10".freeze
  s.summary = "RuboCop runner for Slim template.".freeze

  s.installed_by_version = "3.4.10" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<rubocop>.freeze, [">= 1.49"])
  s.add_runtime_dependency(%q<slimi>.freeze, [">= 0.5.1"])
  s.add_runtime_dependency(%q<templatecop>.freeze, [">= 0"])
end
