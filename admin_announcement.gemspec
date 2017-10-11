$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'admin_announcement/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'admin_announcement'
  s.version     = AdminAnnouncement::VERSION
  s.authors     = ['Nitanshu']
  s.email       = ['nitanshu1991@gmail.com']
  s.homepage    = 'https://github.com/nitanshu/admin_announcement'
  s.summary     = 'AdminAnnouncement'
  s.description = 'It helps admin to announce anything including parsed html in a form a notice.It consists two types of announcements: Session Based: Only for logged in users.(Application Layout), Cookie Based: For all users visiting the website.(Public Layout)'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_runtime_dependency 'rails'
end
