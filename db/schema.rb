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

ActiveRecord::Schema.define(version: 2022_01_25_231022) do

  create_table "lists", force: :cascade do |t|
    t.string "list_name"
  end

  create_table "parks", force: :cascade do |t|
    t.string "park_name"
    t.string "description"
    t.string "fee"
    t.string "image_url"
    t.string "location"
    t.integer "state_id"
    t.integer "list_id"
    t.string "states"
    t.string "website"
  end

  create_table "states", force: :cascade do |t|
    t.string "state_name"
    t.string "abbr"
  end

end
