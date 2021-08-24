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

ActiveRecord::Schema.define(version: 2021_08_23_210734) do

  create_table "animal_logs", force: :cascade do |t|
    t.string "note"
    t.boolean "pooped"
    t.boolean "fed"
    t.integer "zookeeper_id"
    t.integer "animal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_animal_logs_on_animal_id"
    t.index ["zookeeper_id"], name: "index_animal_logs_on_zookeeper_id"
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "birthdate"
    t.string "species"
    t.string "sex"
  end

  create_table "zookeepers", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  add_foreign_key "animal_logs", "animals"
  add_foreign_key "animal_logs", "zookeepers"
end
