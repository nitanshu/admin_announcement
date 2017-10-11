$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin_announcement/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin_announcement"
  s.version     = AdminAnnouncement::VERSION
  s.authors     = ["nitanshu"]
  s.email       = ["niverma@q3tech.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of AdminAnnouncement."
  s.description = "TODO: Description of AdminAnnouncement."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "sqlite3"
end
