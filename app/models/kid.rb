# == Schema Information
#
# Table name: kids
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  dob         :date
#  gender      :string(255)
#  image       :text             default("https://team.org/static/images/generic_avatar_300.gif")
#  description :text
#  user_id     :integer
#  school_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Kid < ActiveRecord::Base
	belongs_to :school
	belongs_to :user
	has_and_belongs_to_many :trips
end
