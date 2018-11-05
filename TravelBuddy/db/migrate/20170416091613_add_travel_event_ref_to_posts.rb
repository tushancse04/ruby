class AddTravelEventRefToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :travel_event, foreign_key: true
  end
end
