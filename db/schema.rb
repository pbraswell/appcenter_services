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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130715180159) do

  create_table "flights", :force => true do |t|
    t.time     "departs_at"
    t.float    "flight_time"
    t.string   "origin"
    t.string   "destination"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "itineraries", :force => true do |t|
    t.integer  "traveller_id"
    t.integer  "flight_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "itineraries", ["flight_id"], :name => "index_itineraries_on_flight_id"
  add_index "itineraries", ["traveller_id"], :name => "index_itineraries_on_traveller_id"

  create_table "travellers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "flight_id"
  end

end
