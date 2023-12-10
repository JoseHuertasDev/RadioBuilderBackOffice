# == Schema Information
#
# Table name: socials
#
#  id          :bigint           not null, primary key
#  social_type :string
#  url_socials :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  radio_id    :bigint           not null
#
# Indexes
#
#  index_socials_on_radio_id  (radio_id)
#
# Foreign Keys
#
#  fk_rails_...  (radio_id => radios.id)
#
require "test_helper"

class SocialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
