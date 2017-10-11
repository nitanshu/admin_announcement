module AdminAnnouncement
  module ApplicationHelper
    def user_announcements
      session[:hidden_announcements] ? @announcements = AdminAnnouncement::Announcement.where("admin_announcement_announcements.id not in (?) and admin_announcement_announcements.active not in (?) and admin_announcement_announcements.base not in (?)", session[:hidden_announcements], false, 'cookie') : @announcements = AdminAnnouncement::Announcement.where("admin_announcement_announcements.active not in (?) and admin_announcement_announcements.base not in (?)", false, 'cookie')
      render(:partial => 'admin_announcement/application/fetch_announcements', locale: {announcements: @announcements})
    end

    def public_announcements
      cookies[:hidden_public_announcements] ? @announcements = AdminAnnouncement::Announcement.where("admin_announcement_announcements.id not in (?) and admin_announcement_announcements.active not in (?) and admin_announcement_announcements.base not in (?)", cookies[:hidden_public_announcements].split, false, 'session') : @announcements = AdminAnnouncement::Announcement.where("admin_announcement_announcements.active not in (?) and admin_announcement_announcements.base not in (?)", false, 'session')
      render(:partial => 'admin_announcement/application/fetch_announcements', locale: {announcements: @announcements})
    end
  end
end
