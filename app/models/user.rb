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
#  image              :text             default("https://team.org/static/images/generic_avatar_300.gif")
#  phone_number       :string(255)
#  family_description :text
#  car_brand          :string(255)
#  car_model          :string(255)
#  car_image          :string(255)      default("http://www.huntsgamepreserve.com/sitebuildercontent/sitebuilderpictures/webassets/car-icon.gif")
#  street_address     :text
#  suburb             :string(255)
#  postcode           :integer
#  state              :string(255)
#  map_address        :text
#  user_latitude      :float
#  user_longitude     :float
#  admin              :boolean
#  created_at         :datetime
#  updated_at         :datetime
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :kids
	has_many :schools, through: :kids
	has_many :trips
	has_many :comments

	validates :username, :presence => true, :uniqueness => true, :length => {:minimum => 2, :maximum => 20}
	validate :email, :presence => true, :uniqueness => true

	geocoded_by :map_address, :latitude  => :user_latitude, :longitude => :user_longitude
	after_validation :geocode

  	# acts_as_mappable :default_units => :kms,
   #                 :default_formula => :sphere,
   #                 :distance_field_name => :distance,
   #                 :lat_column_name => :lat,
   #                 :lng_column_name => :lng

end
