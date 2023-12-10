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
require "test_helper"

class RadioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
