# == Schema Information
#
# Table name: schools
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  website           :text
#  phone             :string(255)
#  image             :text             default("http://cdns2.freepik.com/free-photo/school_318-23393.jpg")
#  street_address    :text
#  suburb            :string(255)
#  postcode          :integer
#  state             :string(255)
#  map_address       :text
#  school_latitude   :float
#  school_longitude  :float
#  start_time        :time
#  finish_time       :time
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#

class School < ActiveRecord::Base
	has_many :trips
	has_many :kids
	has_many :users, through: :kids

	geocoded_by :map_address, :latitude  => :school_latitude, :longitude => :school_longitude
	after_validation :geocode

### UPLOADING IMAGES
  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :logo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/

end
