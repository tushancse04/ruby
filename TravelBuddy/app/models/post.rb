# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  content         :text
#  image           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  travel_event_id :integer
#



class Post < ApplicationRecord
	belongs_to :travel_event
	belongs_to :user

	validates :content,  presence: true
	mount_uploader :image, ImageUploader
end
