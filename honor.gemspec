# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'honor/version'

Gem::Specification.new do |gem|
  gem.name          = "honor"
  gem.version       = Honor::VERSION
  gem.authors       = ["Jeremy Ward"]
  gem.email         = ["jrmy.ward@gmail.com"]
  gem.description   = %q{Adds common gamification features such as points, leaderboards, and achievements to a Rails Application.}
  gem.summary       = %q{General gamification-centric reputation system for Rails Applications.}
  gem.homepage      = "https://github.com/jrmyward/honor"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'rails', '~> 4.0'
  gem.add_development_dependency 'sqlite3'
  gem.add_development_dependency "rspec"
  gem.add_development_dependency 'ammeter'
  gem.add_development_dependency "database_cleaner"
  gem.add_development_dependency "timecop"
end
