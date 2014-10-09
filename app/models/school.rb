# == Schema Information
#
# Table name: schools
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  street_address :text
#  suburb         :string(255)
#  postcode       :integer
#  state          :string(255)
#  map_address    :text
#  start_time     :time
#  finish_time    :time
#

class School < ActiveRecord::Base
	has_many :trips
	has_many :kids
	has_many :users, through: :kids

	geocoded_by :map_address, :latitude  => :school_latitude, :longitude => :school_longitude
	after_validation :geocode

end
