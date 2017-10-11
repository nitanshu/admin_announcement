module AdminAnnouncement
  class Announcement < ActiveRecord::Base
    validates_presence_of :message, :background_color, :font_color, :font_size, :text_align, :cross_button_color, :z_index, :base
  end
end
