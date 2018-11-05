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

require 'test_helper'

class TravelPlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
