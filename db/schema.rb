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

ActiveRecord::Schema.define(version: 2022_09_12_203408) do

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.string "genre"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "state"
  end

  create_table "concerts", force: :cascade do |t|
    t.string "date"
    t.integer "city_id"
    t.integer "band_id"
    t.string "venue_name"
    t.string "venue_type"
  end

  create_table "eateries", force: :cascade do |t|
    t.string "name"
    t.string "cuisine_type"
    t.boolean "downtown?"
    t.string "address"
    t.integer "city_id"
  end

end
