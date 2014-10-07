# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  username           :string(255)
#  first_name         :string(255)
#  last_name          :string(255)
#  email              :string(255)
#  password_digest    :string(255)
#  facebook           :text
#  twitter            :text
#  image              :text
#  phone_number       :string(255)
#  family_description :text
#  car_brand          :string(255)
#  car_model          :string(255)
#  car_image          :string(255)
#  street_address     :text
#  suburb             :string(255)
#  postcode           :integer
#  state              :string(255)
#  map_address        :text
#  created_at         :datetime
#  updated_at         :datetime
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :kids
	has_many :trips

	validates :username, :presence => true, :uniqueness => true, :length => {:minimum => 2, :maximum => 20}
	validate :email, :presence => true, :uniqueness => true

end
