class AddTravelDestinationToTravelEvent < ActiveRecord::Migration[5.0]
  def change
    add_reference :travel_events, :travel_destination, foreign_key: true
  end
end
