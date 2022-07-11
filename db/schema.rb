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

ActiveRecord::Schema.define(version: 2022_07_11_152218) do

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.boolean "sighted"
    t.string "image"
    t.boolean "extinct"
    t.string "scientific_name"
  end

  create_table "habitats", force: :cascade do |t|
    t.string "name"
  end

  create_table "sightings", force: :cascade do |t|
    t.string "animal_id"
    t.string "habitat_id"
    t.datetime "seen"
  end

end
