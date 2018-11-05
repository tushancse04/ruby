# == Schema Information
#
# Table name: invitations
#
#  id              :integer          not null, primary key
#  from            :string
#  description     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  travel_event_id :integer
#








class Invitation < ApplicationRecord

	validates :from, presence: true, allow_blank: false
	validates :description, presence: true, allow_blank: false
	validates :user_id, presence: true
	validates :travel_event_id, presence: true

end
