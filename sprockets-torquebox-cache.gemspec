# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sprockets-torquebox-cache"

Gem::Specification.new do |s|
  s.name        = "sprockets-torquebox-cache"
  s.version     = Sprockets::Cache::Torquebox::VERSION
  s.authors     = ["Carl Hörberg"]
  s.email       = ["carl.hoerberg@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A Torquebox cache store for Sprockets}
  s.description = %q{}

  s.rubyforge_project = "sprockets-torquebox-cache"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
