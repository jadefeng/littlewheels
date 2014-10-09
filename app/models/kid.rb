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

### UPLOADING IMAGES
  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
