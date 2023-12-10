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
class Social < ApplicationRecord
  belongs_to :radio
end
