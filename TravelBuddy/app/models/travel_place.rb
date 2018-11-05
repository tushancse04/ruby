# == Schema Information
#
# Table name: travel_places
#
#  id              :integer          not null, primary key
#  address         :string
#  startTime       :datetime
#  endTime         :datetime
#  description     :text
#  travel_event_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class TravelPlace < ApplicationRecord
  belongs_to :travel_event
end
