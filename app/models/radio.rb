# == Schema Information
#
# Table name: radios
#
#  id              :bigint           not null, primary key
#  font_color      :string
#  font_type       :string
#  icon_color      :string
#  logo            :string
#  menu_bg_color   :string
#  player_bg_color :string
#  title           :string
#  url_stream      :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_radios_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Radio < ApplicationRecord
  belongs_to :user
  has_many :socials, dependent: :destroy
  has_one :schedule, dependent: :destroy
  accepts_nested_attributes_for :socials, :schedule
end
