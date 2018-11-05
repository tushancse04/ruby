# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  address    :string
#  phone      :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin_id   :integer
#  image      :string
#







class User < ApplicationRecord
	belongs_to :admin
	has_many :reviews, :dependent => :destroy
	has_many :posts, :dependent => :destroy
	has_many :travel_events, :dependent => :destroy
	mount_uploader :image, ImageUploader

	validates :email, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone, format: {with: /\A\d+{3}-\d+{3}-\d+{4}\z/}, allow_blank: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
	validates :address, length: {maximum: 70}, allow_blank: true
end
