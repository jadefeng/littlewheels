class AddAvatarToKids < ActiveRecord::Migration
  def self.up
    add_attachment :kids, :avatar
  end

  def self.down
    remove_attachment :kids, :avatar
  end

end
