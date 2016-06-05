# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/spotify/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-spotify'
  spec.version       = Fastlane::Spotify::VERSION
  spec.author        = %q{David Ohayon}
  spec.email         = %q{ohayon.1@gmail.com}

  spec.summary       = %q{what better way to celebrate shipping than with a little eye of the tiger?}
  spec.homepage      = "https://github.com/ohwutup/fastlane-plugin-spotify"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.bindir        = 'bin'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.94.0'
end
