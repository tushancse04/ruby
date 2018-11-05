require 'test_helper'

class TravelPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_place = travel_places(:one)
  end

  test "should get index" do
    get travel_places_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_place_url
    assert_response :success
  end

  test "should create travel_place" do
    assert_difference('TravelPlace.count') do
      post travel_places_url, params: { travel_place: { address: @travel_place.address, description: @travel_place.description, endTime: @travel_place.endTime, startTime: @travel_place.startTime, travel_event_id: @travel_place.travel_event_id } }
    end

    assert_redirected_to travel_place_url(TravelPlace.last)
  end

  test "should show travel_place" do
    get travel_place_url(@travel_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_place_url(@travel_place)
    assert_response :success
  end

  test "should update travel_place" do
    patch travel_place_url(@travel_place), params: { travel_place: { address: @travel_place.address, description: @travel_place.description, endTime: @travel_place.endTime, startTime: @travel_place.startTime, travel_event_id: @travel_place.travel_event_id } }
    assert_redirected_to travel_place_url(@travel_place)
  end

  test "should destroy travel_place" do
    assert_difference('TravelPlace.count', -1) do
      delete travel_place_url(@travel_place)
    end

    assert_redirected_to travel_places_url
  end
end
