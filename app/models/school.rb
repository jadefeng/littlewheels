class School < ActiveRecord::Base
	has_many :trips
	has_many :kids
	belongs_to :suburb
end