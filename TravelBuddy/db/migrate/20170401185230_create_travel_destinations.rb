class CreateTravelDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :travel_destinations do |t|
      t.string :address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
