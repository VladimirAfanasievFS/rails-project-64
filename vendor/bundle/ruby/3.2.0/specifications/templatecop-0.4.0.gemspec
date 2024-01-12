# -*- encoding: utf-8 -*-
# stub: templatecop 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "templatecop".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/r7kamura/templatecop/blob/mainCHANGELOG.md", "homepage_uri" => "https://github.com/r7kamura/templatecop", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/r7kamura/templatecop" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryo Nakamura".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-01-09"
  s.email = ["r7kamura@gmail.com".freeze]
  s.homepage = "https://github.com/r7kamura/templatecop".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.4.10".freeze
  s.summary = "RuboCop runner framework for template language.".freeze

  s.installed_by_version = "3.4.10" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<parallel>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<parser>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<rubocop>.freeze, [">= 0.87"])
end
