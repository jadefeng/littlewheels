# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
# # Difficult to add users without the password digest
user1 = User.create(:facebook => 'https://facebook.com/jadefeng', :twitter => 'https://twitter.com/fengjade', :username => "jadefeng", :first_name => "Jade", :last_name => "Feng", :email => "j.feng.1991@gmail.com", :password_digest => "$2a$10$OF2VD2AMIsbzJ723xIhN7uBJcjc5ewPWOZC.SVoPnpeZJDBohGAXW", :image => "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1966726_10152790385673636_550276843_n.jpg?oh=926e956835b9055a22542658e0ba727f&oe=54B964B0&__gda__=1421143784_2817e7577b75a158175785c1588e8f69", :phone_number => "0404899780", :family_description => "", :car_brand => nil, :car_model => nil, :car_image => nil, :street_address => "4A O'Briens Rd", :suburb => "Hurstville", :postcode => 2220, :state => "NSW", :map_address => "4A O'Briens Rd, Hurstville, 2220")
user2 = User.create(:username=>"phil", :first_name=>"Phil", :last_name=>"Jacob", :email=>"phil@gmail.com", :password_digest => "$2a$10$OF2VD2AMIsbzJ723xIhN7uBJcjc5ewPWOZC.SVoPnpeZJDBohGAXW",  :image=>"http://imgs.abduzeedo.com/files/articles/20-beautiful-pictures-cats/Darn_Good_Looking_Cat_by_mamazmeilor.jpg", :phone_number=>"61404899780", :facebook=>"https://www.facebook.com/jadefeng", :twitter=>"https://twitter.com/fengjade", :family_description=>"Blah blah blah family description", :car_brand=>"Mazda", :car_model=>"3", :car_image=>"http://www.mazda.com.au/assets/cars/allnewmazda3/sedan/overview/standard-features-panel/1.2.1.1-sp25.png", :street_address=>"184 Old South Headroad", :suburb=>"Bellevue Hill", :map_address => "184 Old South Headroad, Bellevue Hill, 2023, NSW", :postcode=>2023, :state=>"NSW")

School.destroy_all

school1 = School.create(
	:name => "Hurstville Adventist School", 
	:street_address => "30 Wright Street",
	:suburb => "Hurstville",
	:postcode => 2220,
	:map_address => "Hurstville Adventist School, 30 Wright Street, Hurstville, NSW 2220"
	)

school2 = School.create(
	:name => "Hurstville Public School", 
	:street_address => "Forest Road",
	:suburb => "Hurstville",
	:postcode => 2220,
	:map_address => "Hurstville Public School, Forest Road, Hurstville, NSW 2220"

	)


Kid.destroy_all
 
Kid.create(:image => 'http://i.factmonster.com/images/australian-student.jpg', :first_name => "Jack", :last_name => "Smith", :dob => "Feburary 12, 2006", :gender => "male", :school_id => school1.id, :user_id => user1.id )
Kid.create(:image => 'http://i.factmonster.com/images/australian-student.jpg', :first_name => "Sally", :last_name => " Smith", :dob => "January 12, 2009", :gender => "female", :school_id => school1.id, :user_id => user2.id )
Kid.create(:image => 'http://i.factmonster.com/images/australian-student.jpg', :first_name => "Alison", :last_name => " Morris", :dob => "March 12, 2010", :gender => "female", :school_id => school1.id, :user_id => user2.id )
Kid.create(:image => 'http://i.factmonster.com/images/australian-student.jpg', :first_name => "Jade", :last_name => " Feng", :dob => "December 12, 2008", :gender => "female", :school_id => school2.id, :user_id => user2.id )
Kid.create(:image => 'http://i.factmonster.com/images/australian-student.jpg', :first_name => "James", :last_name => " Feng", :dob => "June 12, 2009", :gender => "male", :school_id => school2.id, :user_id => user1.id )


Trip.destroy_all

Trip.create(:school_id => school1.id, :direction => 'pickup', :user_id => user1.id, :seats_available => 2, :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:school_id => school1.id, :direction => 'pickup', :user_id => user1.id, :seats_available => 3, :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:school_id => school2.id, :direction => 'dropoff', :user_id => user1.id, :seats_available => 1, :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:school_id => school2.id, :direction => 'dropoff', :user_id => user2.id, :seats_available => 3, :desired_start_time => "8:00AM", :date => "3 October 2014" )
Trip.create(:school_id => school1.id, :direction => 'dropoff', :user_id => user2.id, :seats_available => 2, :desired_start_time => "8:00AM", :date => "3 October 2014" )
