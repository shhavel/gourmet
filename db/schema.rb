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

ActiveRecord::Schema.define(version: 20140313000012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "atmosferes", primary_key: "atmosfere_id", force: true do |t|
    t.string "name", null: false
  end

  add_index "atmosferes", ["name"], name: "index_atmosferes_on_name", unique: true, using: :btree

  create_table "orders", force: true do |t|
    t.integer  "restaurant_id", null: false
    t.datetime "datetime",      null: false
    t.integer  "quantity",      null: false
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["restaurant_id"], name: "index_orders_on_restaurant_id", using: :btree

  create_table "restaurants", primary_key: "restaurant_id", force: true do |t|
    t.string  "name",                                                null: false
    t.string  "address",                                             null: false
    t.decimal "longitude",     precision: 10, scale: 6,              null: false
    t.decimal "latitude",      precision: 10, scale: 6,              null: false
    t.float   "averagesum"
    t.string  "worktime"
    t.string  "phone",                                               null: false
    t.string  "imageurls",                              default: [], null: false, array: true
    t.text    "description"
    t.float   "rating"
    t.integer "atmosfere_ids",                          default: [], null: false, array: true
  end

  create_table "spatial_ref_sys", id: false, force: true do |t|
    t.integer "srid",                   null: false
    t.string  "auth_name", limit: 256
    t.integer "auth_srid"
    t.string  "srtext",    limit: 2048
    t.string  "proj4text", limit: 2048
  end

end
