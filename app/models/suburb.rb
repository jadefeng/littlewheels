class suburb < ActiveRecord::Base
	has_many :users
	has_many :schools
end