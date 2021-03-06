class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
    	t.integer :seats_available
    	
        t.integer :user_id 			# Driver / start address
    	t.integer :school_id        # Destination
    	    	
        t.string :direction
        t.time :desired_start_time
    	t.date :date

    	t.timestamps
    end
  end
end
