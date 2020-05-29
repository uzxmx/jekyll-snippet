# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-snippet/version'

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-snippet'
  spec.version       = Jekyll::Snippet::VERSION
  spec.summary       = 'Jekyll Snippet plugin'
  spec.description   = 'Jekyll plugin which enhances snippet highlight.'
  spec.authors       = %w(MingxiangXue)
  spec.email         = 'mingxiangxue@gmail.com'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.homepage      = 'https://github.com/uzxmx/jekyll-snippet'
  spec.license       = 'MIT'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.4'

  spec.add_dependency 'jekyll', '>= 3.8'
  spec.add_dependency 'nokogiri', '~> 1.10'
end
