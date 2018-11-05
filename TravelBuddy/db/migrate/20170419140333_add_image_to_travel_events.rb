class AddImageToTravelEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :travel_events, :image, :string
  end
end
