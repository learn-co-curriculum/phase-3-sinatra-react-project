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

ActiveRecord::Schema.define(version: 2022_04_19_150141) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.string "state"
  end

  create_table "museums", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "zipcode"
    t.string "weburl"
    t.string "image"
    t.integer "city_id"
    t.integer "trip_id"
    t.string "operating_hours"
  end

  create_table "trips", force: :cascade do |t|
    t.integer "museum_id"
    t.integer "city_id"
    t.string "notes"
    t.string "trip_title"
  end

end
