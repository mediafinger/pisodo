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

ActiveRecord::Schema.define(version: 20160521164115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pisos", force: :cascade do |t|
    t.string   "name",                    limit: 255
    t.string   "found",                   limit: 255
    t.text     "url"
    t.date     "noticed_at"
    t.string   "area",                    limit: 255
    t.text     "maps"
    t.integer  "floor"
    t.string   "status",                  limit: 255
    t.integer  "price"
    t.integer  "bond"
    t.integer  "broker_fee"
    t.integer  "square_meter"
    t.boolean  "furnished"
    t.integer  "number_of_bedrooms"
    t.integer  "size_of_largest_bedroom"
    t.boolean  "bedroom_to_patio"
    t.boolean  "suited_to_share"
    t.integer  "number_of_bathrooms"
    t.boolean  "bathtub"
    t.integer  "size_of_living_room"
    t.integer  "size_of_balcony"
    t.boolean  "balcony_to_patio"
    t.string   "type_of_kitchen",         limit: 255
    t.boolean  "equipped_kitchen"
    t.boolean  "washing_machine"
    t.boolean  "dishwasher"
    t.string   "type_of_street",          limit: 255
    t.boolean  "quiet"
    t.boolean  "heating"
    t.boolean  "air_conditioning"
    t.boolean  "double_glazing"
    t.boolean  "sunny"
    t.boolean  "closets"
    t.boolean  "wooden_floor"
    t.boolean  "elevator"
    t.boolean  "space_for_bike"
    t.integer  "distance_to_metro"
    t.integer  "distance_to_work"
    t.integer  "distance_to_beach"
    t.integer  "distance_to_park"
    t.text     "picture_one"
    t.text     "picture_two"
    t.string   "contact",                 limit: 255
    t.string   "fon",                     limit: 255
    t.date     "visited_at"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "pet_friendly"
    t.boolean  "visited"
  end

end
