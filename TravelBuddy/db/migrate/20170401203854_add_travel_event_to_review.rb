class AddTravelEventToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :travel_event, foreign_key: true
  end
end
