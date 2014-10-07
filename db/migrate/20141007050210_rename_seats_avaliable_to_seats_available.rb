class RenameSeatsAvaliableToSeatsAvailable < ActiveRecord::Migration
  def change
  	rename_column :trips, :seats_avaliable, :seats_available
  end
end
