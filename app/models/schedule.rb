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
class Schedule < ApplicationRecord
  belongs_to :radio
  has_many :programings, dependent: :destroy
  accepts_nested_attributes_for :programings
end
