# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  username           :string(255)
#  email              :string(255)
#  password_digest    :string(255)
#  image              :text
#  phone_number       :string(255)
#  family_description :text
#  car                :string(255)
#  street_address     :text
#  suburb_id          :integer
#  postcode           :integer
#  state              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class User < ActiveRecord::Base
	has_secure_password

	belongs_to :suburb
	has_many :kids
	has_many :trips

	validates :username, :presence => true, :uniqueness => true, :length => {:minimum => 2, :maximum => 20}
	validate :email, :presence => true, :uniqueness => true

end
