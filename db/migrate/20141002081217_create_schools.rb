class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
    	t.string :name
    	t.text :street_address  	# Address
    	t.string :suburb		# Address
    	t.integer :postcode			# Address - should this be an ID?
    	t.string :state             # Address
        t.text :map_address

    	t.time :start_time
    	t.time :finish_time
    end
  end
end
