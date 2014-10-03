# == Schema Information
#
# Table name: suburbs
#
#  id       :integer          not null, primary key
#  name     :string(255)
#  postcode :integer
#  state    :string(255)
#  country  :string(255)
#

class Suburb < ActiveRecord::Base
	has_many :users
	has_many :schools
end
