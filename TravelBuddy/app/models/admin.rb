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









class Admin < ApplicationRecord
	has_one :user, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

    validates :email, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone, format: {with: /\A\d+{3}-\d+{3}-\d+{4}\z/}, allow_blank: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
    validates :address, length: {maximum: 70}, allow_blank: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |admin|
      admin.email = auth.info.email
      admin.password = Devise.friendly_token[0,20]
      admin.first_name = auth.info.first_name   # assuming the admin model has a first_name
      admin.last_name = auth.info.last_name   # assuming the admin model has a last_name
      
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # admin.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |admin|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        admin.email = data["email"] if admin.email.blank?
      end
    end
  end

end
