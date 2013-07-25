# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meta_titles/version'

Gem::Specification.new do |gem|
  gem.license       = "MIT"
  gem.name          = "meta_titles"
  gem.version       = MetaTitles::VERSION
  gem.authors       = ["Andrey"]
  gem.email         = ["railscode@gmail.com"]
  gem.description   = "Meta Titles for Rails Backend App in one .yml file"
  gem.summary       = "summary"
  gem.homepage      = "https://github.com/vav/meta_titles"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
