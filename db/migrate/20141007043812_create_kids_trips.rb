class CreateKidsTrips < ActiveRecord::Migration
  def change
    create_table :kids_trips do |t|
    	t.integer :kid_id
    	t.integer :trip_id
    	t.timestamps
    end
  end
end
