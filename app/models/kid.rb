# == Schema Information
#
# Table name: kids
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  dob         :date
#  gender      :string(255)
#  image       :text
#  description :text
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Kid < ActiveRecord::Base
	belongs_to :school
	belongs_to :user
	has_and_belongs_to_many :trips
end
