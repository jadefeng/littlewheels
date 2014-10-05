# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
# Difficult to add users without the password digest


Kid.destroy_all
 
# Kid.create(:name => "Jack Smith", :dob => "Feburary 12, 2006", :gender => "male")
# Kid.create(:name => "Sally Smith", :dob => "January 12, 2009", :gender => "female")
# Kid.create(:name => "Alison Morris", :dob => "March 12, 2010", :gender => "female")
# Kid.create(:name => "Jade Feng", :dob => "December 12, 2008", :gender => "female")
# Kid.create(:name => "James Feng", :dob => "June 12, 2009", :gender => "male")

School.destroy_all

School.create(:name => "Kingsgrove Public School", :street_address => "3-6 Kingsgrove Road", :suburb => "Kingsgrove",  :postcode => 2208, :start_time => "9:00AM", :finish_time => "3:00PM")
School.create(:name => "Hurstville Public School", :street_address => "52-96 Forest Rd", :suburb => "Hurstville",  :postcode => 2208,  :start_time => "9:00AM", :finish_time => "3:00PM")
School.create(:name => "Kogarah Public School", :street_address => "Gladstone St", :suburb => "Kogarah", :postcode => 2217, :start_time => "9:00AM", :finish_time => "3:00PM")
School.create(:name => "Beverly Hills Public School", :street_address => "King Georges Road", :suburb => "Beverly Hills",  :postcode => 2209, :start_time => "9:00AM", :finish_time => "3:00PM")
School.create(:name => "Arncliffe Public School", :street_address => "168 Princes Hwy", :suburb => "Arncliffe", :postcode => 2205, :start_time => "9:00AM", :finish_time => "3:00PM")

Trip.destroy_all

Trip.create(:seats_avaliable => 2, :car_desc => "Toyota Camry", :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:seats_avaliable => 3, :car_desc => "Toyota 4WD", :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:seats_avaliable => 1, :car_desc => "Volkswagon Beetle", :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:seats_avaliable => 3, :car_desc => "Toyota Camry", :desired_start_time => "8:00AM", :date => "3 October 2014" )
Trip.create(:seats_avaliable => 2, :car_desc => "Mazda 3", :desired_start_time => "8:00AM", :date => "3 October 2014" )
