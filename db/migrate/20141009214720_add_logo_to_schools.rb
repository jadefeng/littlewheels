class AddLogoToSchools < ActiveRecord::Migration
  def self.up
    add_attachment :schools, :logo
  end

  def self.down
    remove_attachment :schools, :logo
  end
end
