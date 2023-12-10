# == Schema Information
#
# Table name: programings
#
#  id          :bigint           not null, primary key
#  day         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  schedule_id :bigint           not null
#
# Indexes
#
#  index_programings_on_schedule_id  (schedule_id)
#
# Foreign Keys
#
#  fk_rails_...  (schedule_id => schedules.id)
#
require "test_helper"

class ProgramingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
