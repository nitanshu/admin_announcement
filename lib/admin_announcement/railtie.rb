require 'action_view/helpers'
module AdminAnnouncement
  class Railtie < Rails::Railtie
    initializer 'admin_announcement.view_helpers' do
      ActionView::Base.send :include, AdminAnnouncement::ApplicationHelper
    end
  end
end