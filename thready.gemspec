# -*- encoding: utf-8 -*-
require File.expand_path('../lib/thready/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alex Chaffee"]
  gem.email         = ["alex@stinky.com"]
  gem.description   = %q{Dumps thread information to stdout when you press control-backslash.}
  gem.summary       = %q{Sets up a signal handler so when your app receives a SIGQUIT it dumps
  information about the currently running threads. On Unix (including MacOS)
  this usually happens when you press control-backslash.
  }
  gem.homepage      = "https://github.com/alexch/thready"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "thready"
  gem.require_paths = ["lib"]
  gem.version       = Thready::VERSION
  gem.license       = "MIT"
end
