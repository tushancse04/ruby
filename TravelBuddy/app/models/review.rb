# == Schema Information
#
# Table name: reviews
#
#  id              :integer          not null, primary key
#  rating          :decimal(, )
#  description     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  travel_event_id :integer
#  user_id         :integer
#







class Review < ApplicationRecord
	belongs_to :travel_event, optional: true
	belongs_to :user
	validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
