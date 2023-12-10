# frozen_string_literal: true

class RadioSerializer < BaseSerializer
  attributes :id, :title, :url_stream, :logo, :font_type, :font_color, :player_bg_color, :menu_bg_color, :icon_color
  has_many :socials
  has_one :schedule
end
