class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username
        t.string :first_name
        t.string :last_name
    	t.string :email
    	t.string :password_digest
        t.text :facebook
        t.text :twitter

        t.text :image
    	t.string :phone_number
    	t.text :family_description
        
        t.string :car_brand        
        t.string :car_model
        t.string :car_image

    	t.text :street_address  	# Address
    	t.string :suburb		# Address
    	t.integer :postcode			# Address 
    	t.string :state
        t.text :map_address

        t.float :user_latitude
        t.float :user_longitude

    	t.timestamps
    end
  end
end
