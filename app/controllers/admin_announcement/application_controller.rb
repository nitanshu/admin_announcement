module AdminAnnouncement
  class ApplicationController < ActionController::Base
    layout 'layouts/admin_announcement/application'
    protect_from_forgery with: :exception
  end
end
