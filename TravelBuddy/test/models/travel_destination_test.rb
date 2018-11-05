# == Schema Information
#
# Table name: travel_destinations
#
#  id         :integer          not null, primary key
#  address    :string
#  city       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

	# == Schema Information
	#
	# Table name: travel_destinations
	#
	#  id         :integer          not null, primary key
	#  address    :string
	#  city       :string
	#  state      :string
	#  created_at :datetime         not null
	#  updated_at :datetime         not null
	#




	require 'test_helper'

	class TravelDestinationTest < ActiveSupport::TestCase
	  # test "the truth" do
	  #   assert true
	  # end

	test "Destination address can't be null" do
	  	travel_dest = TravelDestination.new
	  	travel_dest.city = "test city" 
	  	travel_dest.state = "test state"
	  	assert_not travel_dest.valid?
	  	

	  	
	  end


	test "Destination city can't be null" do
	  	travel_dest = TravelDestination.new
	  	travel_dest.address = "test address" 
	  	travel_dest.state = "test state"
	  	assert_not travel_dest.valid?
	  	
	end

	test "Destination state can't be null" do
	  	travel_dest = TravelDestination.new
	  	travel_dest.city = "test city" 
	  	travel_dest.address = "test address"
	  	assert_not travel_dest.valid?
	  	
	end

	end
