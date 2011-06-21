# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "handlebars-rails/version"

Gem::Specification.new do |s|
  s.name        = "handlebars-rails"
  s.version     = Handlebars::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Morton Jonuschat"]
  s.email       = ["yabawock@gmail.com"]
  s.homepage    = "https://github.com/yabawock/handlebars-rails"
  s.summary     = %q{Use handlebars.js with rails 3.1}
  s.description = %q{Quickly setup handlebars.js for use with rails 3.1}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.0.0"
  s.add_development_dependency "rails",   "~> 3.1"
end
