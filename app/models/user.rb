class User < ActiveRecord::Base
	has_secure_password

	belongs_to :suburb
	has_many :kids
	has_many :trips

	validates :username, :presence => true, :uniqueness => true, :length => {:minimum => 2, :maximum => 20}
	validate :email, :presence => true, :uniqueness => true

end