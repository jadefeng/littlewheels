class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
    	t.integer :seats_avaliable
    	t.integer :user_id 			# Driver / start address
    	t.integer :school_id        # Destination
    	t.string :car_desc
    	t.time :desired_start_time
    	t.date :date

    	t.timestamps
    end
  end
end
