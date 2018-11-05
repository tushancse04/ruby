# == Schema Information
#
# Table name: pictures
#
#  id                    :integer          not null, primary key
#  title                 :string
#  image                 :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  travel_destination_id :integer
#  review_id             :integer
#  user_id               :integer
#

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
	test "Valid base record" do
		assert Picture.create(title: "This is a cool picture", image: "image.jpg", travel_destination_id: travel_destinations(:one).id, review_id: reviews(:one).id, user_id: users(:one).id).valid?
	end
	
	test "Blank title" do
		assert not(Picture.create(title: "", image: "image.jpg", travel_destination_id: travel_destinations(:one).id, review_id: reviews(:one).id, user_id: users(:one).id).valid?)
	end
	
	test "Null travel_destination_id" do
		assert not(Picture.create(title: "This is a cool picture", image: "image.jpg", review_id: reviews(:one).id, user_id: users(:one).id).valid?)
	end
	
	test "Null review_id" do
		assert not(Picture.create(title: "This is a cool picture", image: "image.jpg", travel_destination_id: travel_destinations(:one).id, user_id: users(:one).id).valid?)
	end
	
	test "Null user_id" do
		assert not(Picture.create(title: "This is a cool picture", image: "image.jpg", travel_destination_id: travel_destinations(:one).id, review_id: reviews(:one).id).valid?)
	end
	
end
