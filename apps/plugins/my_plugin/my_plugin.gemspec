$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "my_plugin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "my_plugin"
  s.version     = MyPlugin::VERSION
  s.authors     = ["Denis Borodai"]
  s.email       = ["den4ik@quartsoft.com"]
  s.homepage    = ""
  s.summary     = ": Summary of MyPlugin."
  s.description = ": Description of MyPlugin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
  s.add_dependency "devise"
  s.add_dependency "omniauth"
  s.add_dependency "omniauth-facebook"
  s.add_dependency "bootstrap-sass"
  s.add_dependency "devise-bootstrap-views"
end
