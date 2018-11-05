class ChangeRatingTypeInReviews < ActiveRecord::Migration[5.0]
  def change
  	change_column :reviews, :rating, :decimal
  end
end
