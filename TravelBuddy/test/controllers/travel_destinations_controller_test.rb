require 'test_helper'

class TravelDestinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_destination = travel_destinations(:one)
  end
=begin
  test "should get index" do
    get travel_destinations_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_destination_url
    assert_response :success
  end

  test "should create travel_destination" do
    assert_difference('TravelDestination.count') do
      post travel_destinations_url, params: { travel_destination: { address: @travel_destination.address, city: @travel_destination.city, state: @travel_destination.state } }
    end

    assert_redirected_to travel_destination_url(TravelDestination.last)
  end

  test "should show travel_destination" do
    get travel_destination_url(@travel_destination)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_destination_url(@travel_destination)
    assert_response :success
  end

  test "should update travel_destination" do
    patch travel_destination_url(@travel_destination), params: { travel_destination: { address: @travel_destination.address, city: @travel_destination.city, state: @travel_destination.state } }
    assert_redirected_to travel_destination_url(@travel_destination)
  end

  test "should destroy travel_destination" do
    assert_difference('TravelDestination.count', -1) do
      delete travel_destination_url(@travel_destination)
    end

    assert_redirected_to travel_destinations_url
  end
=end
end
