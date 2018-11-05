class CreateTravelPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :travel_places do |t|
      t.string :address
      t.datetime :startTime
      t.datetime :endTime
      t.text :description
      t.references :travel_event, foreign_key: true

      t.timestamps
    end
  end
end
