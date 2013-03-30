$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hash_extension/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hash_extension"
  s.version     = HashExtension::VERSION
  s.authors     = ["Framgia Vietnam Co., Ltd"]
  s.email       = ["oss@framgia.com"]
  s.homepage    = "http://github.com/framgia/hash_extension"
  s.summary     = "add useful methods to Hash core class"
  s.description = "add useful methods to Hash core class"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.0.0"

end
