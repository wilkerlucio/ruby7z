# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby7z/version"

Gem::Specification.new do |s|
  s.name        = "ruby7z"
  s.version     = Ruby7z::VERSION
  s.authors     = ["Wilker Lucio"]
  s.email       = ["wilkerlucio@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "ruby7z"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "guard-minitest"
  s.add_development_dependency "growl_notify"
  s.add_development_dependency "rb-fsevent"
end
