class AddTravelDestinationToPicture < ActiveRecord::Migration[5.0]
  def change
    add_reference :pictures, :travel_destination, foreign_key: true
  end
end
