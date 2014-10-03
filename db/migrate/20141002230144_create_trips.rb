class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
    	t.string :seats_avaliable
    	t.integer :user_id 			# Driver
    	t.integer :school_id

    	t.string :car_desc
    	t.time :earliest_time
    	t.time :desired_arrival
    	t.date :date

    	t.timestamps
    end
  end
end
