require_dependency "admin_announcement/application_controller"

module AdminAnnouncement
  class AnnouncementsController < ApplicationController
    skip_filter *_process_action_callbacks.map(&:filter), :only => [:hide]
    before_action :find_announcement, only: [:edit, :update, :destroy, :hide]

    def new
      @announcement = AdminAnnouncement::Announcement.new
    end

    def index
      @announcements = AdminAnnouncement::Announcement.all
    end

    def create
      @announcement = AdminAnnouncement::Announcement.new(announcement_params)
      if @announcement.save
        redirect_to root_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      @announcement.update(announcement_params)
      redirect_to root_path
    end

    def destroy
      @announcement.destroy
      redirect_to root_path
    end

    def hide
      if @announcement.base == 'session'
        session[:hidden_announcements] ||= []
        session[:hidden_announcements].push(@announcement.id)
      else
        cookies.permanent[:hidden_public_announcements] ||= ''
        cookies[@announcement.id.to_s] = {value: @announcement.id.to_s, expires: 1.year.from_now}
        cookies.permanent[:hidden_public_announcements] += " #{@announcement.id.to_s}"
      end
    end

    private

    def find_announcement
      @announcement = AdminAnnouncement::Announcement.where(id: params[:id]).take
    end

    def announcement_params
      params.require(:announcement).permit(:message, :active, :background_color, :font_color, :font_size, :text_align, :cross_button_color, :z_index, :base)
    end
  end
end
