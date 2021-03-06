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

ActiveRecord::Schema.define(version: 20141009214806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.integer  "trip_id"
    t.integer  "user_id"
    t.text     "comment_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["trip_id"], name: "index_comments_on_trip_id", using: :btree

  create_table "kids", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "gender"
    t.text     "image",               default: "https://team.org/static/images/generic_avatar_300.gif"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "kids_trips", force: true do |t|
    t.integer  "kid_id"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.text     "website"
    t.string   "phone"
    t.text     "image",             default: "http://cdns2.freepik.com/free-photo/school_318-23393.jpg"
    t.text     "street_address"
    t.string   "suburb"
    t.integer  "postcode"
    t.string   "state"
    t.text     "map_address"
    t.float    "school_latitude"
    t.float    "school_longitude"
    t.time     "start_time"
    t.time     "finish_time"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "seats_available"
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
    t.text     "facebook"
    t.text     "twitter"
    t.text     "image",                   default: "https://team.org/static/images/generic_avatar_300.gif"
    t.string   "phone_number"
    t.text     "family_description"
    t.string   "car_brand"
    t.string   "car_model"
    t.string   "car_image",               default: "http://www.huntsgamepreserve.com/sitebuildercontent/sitebuilderpictures/webassets/car-icon.gif"
    t.text     "street_address"
    t.string   "suburb"
    t.integer  "postcode"
    t.string   "state"
    t.text     "map_address"
    t.float    "user_latitude"
    t.float    "user_longitude"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "car_avatar_file_name"
    t.string   "car_avatar_content_type"
    t.integer  "car_avatar_file_size"
    t.datetime "car_avatar_updated_at"
  end

end
