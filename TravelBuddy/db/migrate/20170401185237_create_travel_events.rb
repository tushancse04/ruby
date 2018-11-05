class CreateTravelEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :travel_events do |t|
      t.string :name
      t.string :description
      t.integer :max_attendance
      t.decimal :price
      t.datetime :start
      t.time :duration

      t.timestamps
    end
  end
end
