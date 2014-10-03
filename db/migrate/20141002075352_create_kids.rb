class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
    	t.string :name
    	t.date :dob 
        t.string :gender
    	t.text :image
    	t.text :description
        t.integer :user_id
    	t.timestamps
    end
  end
end
