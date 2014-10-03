class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username
    	t.string :email
    	t.string :password_digest
        
        t.text :image
    	t.string :phone_number
    	t.text :family_description
        t.string :car        

    	t.text :street_address  	# Address
    	t.integer :suburb_id		# Address
    	t.integer :postcode			# Address 
    	t.string :state

    	t.timestamps
    end
  end
end
