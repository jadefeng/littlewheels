class Trip < ActiveRecord::Base
	has_and_belongs_to_many :kids
	belongs_to :school
	belongs_to :user
end