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

ActiveRecord::Schema.define(version: 20150517010535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gas", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.float    "price"
    t.float    "amount"
    t.float    "mpg"
    t.float    "miles"
  end

  create_table "gas_stations", id: false, force: :cascade do |t|
    t.integer "gas_id"
    t.integer "station_id"
  end

  add_index "gas_stations", ["gas_id"], name: "index_gas_stations_on_gas_id", using: :btree
  add_index "gas_stations", ["station_id"], name: "index_gas_stations_on_station_id", using: :btree

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.string "address"
  end

end
