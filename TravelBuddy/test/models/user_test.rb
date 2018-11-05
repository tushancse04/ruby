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







require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "valid user" do
		user = User.new
		user.email = "doe@gmail.com"
		user.first_name = "john"
		user.last_name = "doe"
		user.phone = "111-111-1111"
		user.address = "Memphis, TN"

		admin = admins(:one)
		user.admin_id = admin.id

		assert user.valid?
	end

	test "should have first name" do
		user = User.new
		user.email = "doe@gmail.com"
		user.last_name = "doe"

		admin = admins(:one)
		user.admin_id = admin.id

		assert_not user.valid?
	end

	test "should have last name" do
		user = User.new
		user.email = "doe@gmail.com"
		user.first_name = "john"

		admin = admins(:one)
		user.admin_id = admin.id

		assert_not user.valid?
	end

	test "should have email" do
		user = User.new
		user.first_name = "john"
		user.last_name = "doe"

		admin = admins(:one)
		user.admin_id = admin.id

		assert_not user.valid?
	end

	test "should not have invalid formatted phone" do
		user = User.new
		user.email = "doe@gmail.com"
		user.first_name = "john"
		user.last_name = "doe"

		admin = admins(:one)
		user.admin_id = admin.id

		user.phone = "abcd"

		assert_not user.valid?
	end

	test "should not have invalid formatted email" do
		user = User.new
		user.email = "abcd"
		user.first_name = "john"
		user.last_name = "doe"
		user.phone = "111-111-1111"
		user.address = "Memphis, TN"

		admin = admins(:one)
		user.admin_id = admin.id

		assert_not user.valid?
	end

	test "should not have invalid length address" do
		user = User.new
		user.email = "doe@gmail.com"
		user.first_name = "john"
		user.last_name = "doe"
		user.phone = "111-111-1111"
		user.address = "a" * 71

		admin = admins(:one)
		user.admin_id = admin.id

		assert_not user.valid?
	end
end
