# == Schema Information
#
# Table name: schools
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  street_address :text
#  suburb_id      :integer
#  postcode       :integer
#  state          :string(255)
#  start_time     :time
#  finish_time    :time
#

class School < ActiveRecord::Base
	has_many :trips
	has_many :kids
	belongs_to :suburb
end
