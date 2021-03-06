# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'babbage/version'

Gem::Specification.new do |gem|
  gem.name          = "babbage"
  gem.version       = Babbage::VERSION
  gem.authors       = ["geemus"]
  gem.email         = ["geemus@gmail.com"]
  gem.description   = %q{Ruby mathematics}
  gem.summary       = %q{Ruby mathematics}
  gem.homepage      = "http://github.com/geemus/babbage"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
