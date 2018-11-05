class AddReviewToPicture < ActiveRecord::Migration[5.0]
  def change
    add_reference :pictures, :review, foreign_key: true
  end
end
