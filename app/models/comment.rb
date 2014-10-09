# == Schema Information
#
# Table name: comments
#
#  id           :integer          not null, primary key
#  trip_id      :integer
#  user_id      :integer
#  comment_text :text
#  created_at   :datetime
#  updated_at   :datetime
#

class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :trip

end
