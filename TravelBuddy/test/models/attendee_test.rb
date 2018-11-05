# == Schema Information
#
# Table name: attendees
#
#  id              :integer          not null, primary key
#  paid            :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  travel_event_id :integer
#







require 'test_helper'

class AttendeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
	test "Valid base record" do
		assert Attendee.create(paid: true, user_id: users(:one).id, travel_event_id: travel_events(:one).id).valid?
	end
	
	test "Null user_id record" do
		assert not(Attendee.create(paid: true, travel_event_id: travel_events(:one).id).valid?)
	end
	
	test "Null travel_event_id record" do
		assert not(Attendee.create(paid: true, user_id: users(:one).id).valid?)
	end
end
