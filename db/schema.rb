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

ActiveRecord::Schema.define(version: 2021_08_06_021131) do

  create_table "activities", force: :cascade do |t|
    t.integer "day_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "name"
    t.string "description"
    t.index ["day_id"], name: "index_activities_on_day_id"
  end

  create_table "days", force: :cascade do |t|
    t.datetime "date"
    t.integer "trip_id"
    t.index ["trip_id"], name: "index_days_on_trip_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "note_text"
    t.integer "trip_id", null: false
    t.index ["trip_id"], name: "index_notes_on_trip_id"
  end

  create_table "travelers", force: :cascade do |t|
    t.string "name"
  end

  create_table "trips", force: :cascade do |t|
    t.string "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "traveler_id"
    t.index ["traveler_id"], name: "index_trips_on_traveler_id"
  end

  add_foreign_key "activities", "days"
  add_foreign_key "days", "trips"
  add_foreign_key "notes", "trips"
  add_foreign_key "trips", "travelers"
end
