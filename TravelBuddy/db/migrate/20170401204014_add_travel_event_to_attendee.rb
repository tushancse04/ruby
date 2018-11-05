class AddTravelEventToAttendee < ActiveRecord::Migration[5.0]
  def change
    add_reference :attendees, :travel_event, foreign_key: true
  end
end
