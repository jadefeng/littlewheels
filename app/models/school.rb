# == Schema Information
#
# Table name: schools
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  website          :text
#  phone            :string(255)
#  image            :text             default("http://cdns2.freepik.com/free-photo/school_318-23393.jpg")
#  street_address   :text
#  suburb           :string(255)
#  postcode         :integer
#  state            :string(255)
#  map_address      :text
#  school_latitude  :float
#  school_longitude :float
#  start_time       :time
#  finish_time      :time
#

class School < ActiveRecord::Base
	has_many :trips
	has_many :kids
	has_many :users, through: :kids

	geocoded_by :map_address, :latitude  => :school_latitude, :longitude => :school_longitude
	after_validation :geocode

end
