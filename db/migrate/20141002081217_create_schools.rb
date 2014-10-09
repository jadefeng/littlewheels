class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
    	t.string :name
        t.text :website
        t.string :phone
        t.text :image, :default => 'http://cdns2.freepik.com/free-photo/school_318-23393.jpg'

    	t.text :street_address  	# Address
    	t.string :suburb		# Address
    	t.integer :postcode			# Address - should this be an ID?
    	t.string :state             # Address
        t.text :map_address

        t.float :school_latitude
        t.float :school_longitude

    	t.time :start_time
    	t.time :finish_time
    end
  end
end
