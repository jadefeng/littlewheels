# == Schema Information
#
# Table name: trips
#
#  id                 :integer          not null, primary key
#  seats_avaliable    :integer
#  user_id            :integer
#  school_id          :integer
#  car_desc           :string(255)
#  desired_start_time :time
#  date               :date
#  created_at         :datetime
#  updated_at         :datetime
#

class Trip < ActiveRecord::Base
	has_and_belongs_to_many :kids
	belongs_to :school
	belongs_to :user
end
