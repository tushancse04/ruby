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




class Picture < ApplicationRecord
  validates_presence_of :title
  mount_uploader :image, ImageUploader
	
	validates :travel_destination_id, presence: true
	validates :review_id, presence: true
	validates :user_id, presence: true
end
