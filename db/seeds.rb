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
 
Kid.create(:name => "Jack Smith", :dob => "Feburary 12, 2006", :gender => "male")
Kid.create(:name => "Sally Smith", :dob => "January 12, 2009", :gender => "female")
Kid.create(:name => "Alison Morris", :dob => "March 12, 2010", :gender => "female")
Kid.create(:name => "Jade Feng", :dob => "December 12, 2008", :gender => "female")
Kid.create(:name => "James Feng", :dob => "June 12, 2009", :gender => "male")

School.destroy_all
# Need to fill in accurate google data
School.create(:name => "Kingsgrove Public School", :street_address => "", :start_time => "9:00AM", :finish_time => "3:00PM")
School.create(:name => "Hurstville Public School", :street_address => "", :start_time => "9:00AM", :finish_time => "3:00PM")
School.create(:name => "Kogarah Public School", :street_address => "", :start_time => "9:00AM", :finish_time => "3:00PM")
School.create(:name => "Beverley Hills Public School", :street_address => "", :start_time => "9:00AM", :finish_time => "3:00PM")
School.create(:name => "Rockdale Public School", :street_address => "", :start_time => "9:00AM", :finish_time => "3:00PM")

Suburb.destroy_all

Suburb.create(:name => "Hurstville", :postcode => 2000, :state => "NSW", :country => "Australia")
Suburb.create(:name => "Kogarah", :postcode => 2009, :state => "NSW", :country => "Australia")
Suburb.create(:name => "Kingsgrove", :postcode => 2000, :state => "NSW", :country => "Australia")
Suburb.create(:name => "Beverley Hills", :postcode => 2000, :state => "NSW", :country => "Australia")
Suburb.create(:name => "Rockdale", :postcode => 2000, :state => "NSW", :country => "Australia")

Trip.destroy_all

Trip.create(:seats_avaliable => 2, :car_desc => "Toyota Camry", :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:seats_avaliable => 3, :car_desc => "Toyota 4WD", :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:seats_avaliable => 1, :car_desc => "Volkswagon Beetle", :desired_start_time => "7:30AM", :date => "3 October 2014" )
Trip.create(:seats_avaliable => 3, :car_desc => "Toyota Camry", :desired_start_time => "8:00AM", :date => "3 October 2014" )
Trip.create(:seats_avaliable => 2, :car_desc => "Mazda 3", :desired_start_time => "8:00AM", :date => "3 October 2014" )
