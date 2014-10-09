# == Schema Information
#
# Table name: trips
#
#  id                 :integer          not null, primary key
#  seats_available    :integer
#  user_id            :integer
#  school_id          :integer
#  direction          :string(255)
#  desired_start_time :time
#  date               :date
#  created_at         :datetime
#  updated_at         :datetime
#

class Trip < ActiveRecord::Base
	has_and_belongs_to_many :kids
	belongs_to :school
	belongs_to :user
	has_many :comments

	def seats_remaining
		return self.seats_available - self.kids.length
	end
end
