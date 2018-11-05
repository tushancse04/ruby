# == Schema Information
#
# Table name: travel_events
#
#  id                    :integer          not null, primary key
#  name                  :string
#  description           :string
#  max_attendance        :integer
#  price                 :decimal(, )
#  start                 :datetime
#  duration              :time
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  travel_destination_id :integer
#  user_id               :integer
#  image                 :string
#




	#validates :name, length: {maximum: 50}, uniqueness: true, presence: true
	#validates :description, length: {maximum: 500}, presence: true
	#validates :max_attendance, presence: true,inclusion: {in: 1..200}
	#validates :price, numericality: {greater_than_or_equal_to: 0}, presence: true
	#validates :start, presence: true
	#validates :duration, presence: true



require 'test_helper'

class TravelEventTest < ActiveSupport::TestCase

  test "travel event must have a name!" do
  	travel_event = test_event()
  	travel_event.name = nil
  	assert_not travel_event.valid?
  	
  	#assert_not new_build.valid?
  end

  test "Event name can't be duplicate!" do
  	travel_event = test_event()
  	travel_event.name = TravelEvent.first().name
  	assert_not travel_event.valid?
  	
  end

  test "Event description can't be empty!" do
  	travel_event = test_event()
  	travel_event.description = nil
  	assert_not travel_event.valid?
  	
  end

  test "Event max_attendance must be in between 0 and 200!" do
  	travel_event = test_event()
  	travel_event.max_attendance = nil
	assert_not travel_event.valid?

  	travel_event.max_attendance = -1
  	assert_not travel_event.valid?

  	travel_event.max_attendance = 201
  	assert_not travel_event.valid?
  	
  end



  test "Event price must be none zero positive integer" do
  	travel_event = test_event()
  	travel_event.price = nil
  	assert_not travel_event.valid?

  	travel_event.price = -1
  	assert_not travel_event.valid?
  	
  end


  test "Event start date and durattion can't be null" do
  	travel_event = test_event()
  	travel_event.start = nil
  	assert_not travel_event.valid?
  	
  	travel_event.duration = nil
  	assert_not travel_event.valid?
  	
  end

  def test_event
  	travel_event = TravelEvent.new
  	travel_event.name = nil
    travel_event = TravelEvent.new
    travel_event.name = 'Test test Fest'
  	travel_event.description = 'test test event desc'
  	travel_event.max_attendance = 10
  	travel_event.price = 20
  	travel_event.travel_destination_id = TravelDestination.first().id
  	travel_event.user_id = User.first().id
  	travel_event.start = DateTime.now
  	travel_event.duration = DateTime.now
  	return travel_event
  end
end
