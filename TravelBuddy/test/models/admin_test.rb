# == Schema Information
#
# Table name: admins
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string
#  last_name              :string
#  address                :string
#  phone                  :string
#  provider               :string
#  uid                    :string
#







require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "valid admin" do
		admin = admins(:one)
		assert admin.valid?
	end

	test "should have first name" do
		admin = Admin.new
		admin.email = "doe@gmail.com"
		admin.last_name = "doe"

		assert_not admin.valid?
	end

	test "should have last name" do
		admin = Admin.new
		admin.email = "doe@gmail.com"
		admin.first_name = "john"

		assert_not admin.valid?
	end

	test "should have email" do
		admin = Admin.new
		admin.first_name = "john"
		admin.last_name = "doe"

		assert_not admin.valid?
	end

	test "should not have invalid formatted phone" do
		admin = Admin.new
		admin.email = "doe@gmail.com"
		admin.first_name = "john"
		admin.last_name = "doe"
		admin.phone = "abcd"

		assert_not admin.valid?
	end

	test "should not have invalid formatted email" do
		admin = Admin.new
		admin.email = "abcd"

		admin.first_name = "john"
		admin.last_name = "doe"
		admin.phone = "111-111-1111"
		admin.address = "Memphis, TN"

		assert_not admin.valid?
	end

	test "should not have invalid length address" do
		admin = Admin.new
		admin.email = "doe@gmail.com"
		admin.first_name = "john"
		admin.last_name = "doe"
		admin.phone = "111-111-1111"
		admin.address = "a" * 71

		assert_not admin.valid?
	end

end
