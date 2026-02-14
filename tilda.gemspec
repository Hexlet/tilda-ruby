# frozen_string_literal: true

require_relative "lib/tilda/version"

Gem::Specification.new do |s|
  s.name = "tilda"
  s.version = Tilda::VERSION
  s.summary = "Ruby library to access the Tilda API"
  s.authors = ["Tilda"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/tilda"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/Hexlet/tilda-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "cgi"
  s.add_dependency "connection_pool"
end
