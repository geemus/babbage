# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maths/version'

Gem::Specification.new do |gem|
  gem.name          = "maths"
  gem.version       = Maths::VERSION
  gem.authors       = ["geemus"]
  gem.email         = ["geemus@gmail.com"]
  gem.description   = %q{Ruby maths}
  gem.summary       = %q{Ruby maths}
  gem.homepage      = "http://github.com/geemus/maths"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
