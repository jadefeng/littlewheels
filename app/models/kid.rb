class Kid < ActiveRecord::Base
	belongs_to :school
	belongs_to :user
	has_and_belongs_to_many :trips
end