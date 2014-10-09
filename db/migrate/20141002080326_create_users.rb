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

        t.text :image, :default => 'https://team.org/static/images/generic_avatar_300.gif'
    	t.string :phone_number
    	t.text :family_description
        
        t.string :car_brand        
        t.string :car_model
        t.string :car_image, :default => 'http://www.huntsgamepreserve.com/sitebuildercontent/sitebuilderpictures/webassets/car-icon.gif'

    	t.text :street_address  	# Address
    	t.string :suburb		# Address
    	t.integer :postcode			# Address 
    	t.string :state
        t.text :map_address

        t.float :user_latitude
        t.float :user_longitude
        t.boolean :admin

    	t.timestamps
    end
  end
end
