# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141002230144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kids", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "gender"
    t.text     "image"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string  "name"
    t.text    "street_address"
    t.string  "suburb"
    t.integer "postcode"
    t.string  "state"
    t.text    "map_address"
    t.time    "start_time"
    t.time    "finish_time"
  end

  create_table "trips", force: true do |t|
    t.integer  "seats_avaliable"
    t.integer  "user_id"
    t.integer  "school_id"
    t.string   "direction"
    t.time     "desired_start_time"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.text     "image"
    t.string   "phone_number"
    t.text     "family_description"
    t.string   "car_brand"
    t.string   "car_model"
    t.string   "car_image"
    t.text     "street_address"
    t.string   "suburb"
    t.integer  "postcode"
    t.string   "state"
    t.text     "map_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
