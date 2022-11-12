# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_10_192926) do

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "cover_photo"
    t.integer "price"
    t.integer "rent_frequency"
    t.integer "rooms"
    t.string "title"
    t.integer "baths"
    t.string "area"
    t.string "is_verified"
    t.integer "external_id"
    t.string "description"
    t.string "typen"
    t.string "purpose"
    t.string "furnishing_status"
    t.string "amenities"
    t.string "photos"
    t.integer "agency_id"
    t.integer "client_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "agencies_id"
    t.integer "clients_id"
    t.index ["agencies_id"], name: "index_properties_on_agencies_id"
    t.index ["clients_id"], name: "index_properties_on_clients_id"
  end

  add_foreign_key "properties", "agencies", column: "agencies_id"
  add_foreign_key "properties", "clients", column: "clients_id"
end
