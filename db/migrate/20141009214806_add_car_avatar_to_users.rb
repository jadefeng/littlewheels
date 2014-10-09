class AddCarAvatarToUsers < ActiveRecord::Migration
  def self.up
    add_attachment :users, :car_avatar
  end

  def self.down
    remove_attachment :users, :car_avatar
  end
end
