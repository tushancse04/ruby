require 'test_helper'

class TravelEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel_event = travel_events(:one)
  end
=begin
  test "should get index" do
    get travel_events_url
    assert_response :success
  end

  test "should get new" do
    get new_travel_event_url
    assert_response :success
  end

  test "should create travel_event" do
    assert_difference('TravelEvent.count') do
      post travel_events_url, params: { travel_event: {  } }
    end

    assert_redirected_to travel_event_url(TravelEvent.last)
  end

  test "should show travel_event" do
    get travel_event_url(@travel_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_travel_event_url(@travel_event)
    assert_response :success
  end

  test "should update travel_event" do
    patch travel_event_url(@travel_event), params: { travel_event: {  } }
    assert_redirected_to travel_event_url(@travel_event)
  end

  test "should destroy travel_event" do
    assert_difference('TravelEvent.count', -1) do
      delete travel_event_url(@travel_event)
    end

    assert_redirected_to travel_events_url
  end
=end
end
