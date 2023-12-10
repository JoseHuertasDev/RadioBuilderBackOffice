# == Schema Information
#
# Table name: schedules
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  radio_id   :bigint           not null
#
# Indexes
#
#  index_schedules_on_radio_id  (radio_id)
#
# Foreign Keys
#
#  fk_rails_...  (radio_id => radios.id)
#
require "test_helper"

class ScheduleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
