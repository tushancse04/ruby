class AddUserToTravelEvent < ActiveRecord::Migration[5.0]
  def change
    add_reference :travel_events, :user, foreign_key: true
  end
end
