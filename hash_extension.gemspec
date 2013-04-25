$:.push File.expand_path("../lib", __FILE__)
require "hash_extension/version"

Gem::Specification.new do |s|
  s.name        = "hash_extension"
  s.version     = HashExtension::VERSION
  s.authors     = ["Framgia Vietnam Co., Ltd"]
  s.email       = ["oss@framgia.com"]
  s.homepage    = "http://github.com/framgia/hash_extension"
  s.summary     = "add useful methods to Hash core class"
  s.description = "add useful methods to Hash core class"

  s.rubyforge_project = "hash_extension"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
