
# == Schema Information
#
# Table name: invitations
#
#  id              :integer          not null, primary key
#  from            :string
#  description     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  travel_event_id :integer
#







require 'test_helper'

class InvitationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
	test "Valid base record" do
		assert Invitation.create(from: "Tom", description: "Look at my event", user_id: users(:one).id, travel_event_id: travel_events(:one).id).valid?
	end
	
	test "Blank from" do
		assert not(Invitation.create(from: "", description: "Look at my event", user_id: users(:one).id, travel_event_id: travel_events(:one).id).valid?)
	end
	
	test "Null user_id" do
		assert not(Invitation.create(from: "", description: "Look at my event", travel_event_id: travel_events(:one).id).valid?)
	end
	
	test "Null travel_event_id" do
		assert not(Invitation.create(from: "", description: "Look at my event", user_id: users(:one).id).valid?)
	end
	
end
