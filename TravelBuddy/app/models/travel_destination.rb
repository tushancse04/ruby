# == Schema Information
#
# Table name: travel_destinations
#
#  id         :integer          not null, primary key
#  address    :string
#  city       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#




class TravelDestination < ApplicationRecord
	has_many :travel_events

	validates :address, presence: true
	validates :city, presence: true
	validates :state, presence: true

end
