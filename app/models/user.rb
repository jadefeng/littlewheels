class User < ActiveRecord::Base
	belongs_to :suburb
	has_many :kids
	has_many :trips
end