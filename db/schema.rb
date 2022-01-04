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

ActiveRecord::Schema.define(version: 2022_01_04_215355) do

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.string "city"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "bio"
    t.string "photo"
    t.boolean "adopted"
    t.integer "agency_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "city"
    t.string "bio"
    t.string "interested_in"
    t.string "photo"
  end

end
