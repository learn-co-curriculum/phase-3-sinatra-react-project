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

ActiveRecord::Schema.define(version: 2021_11_15_224513) do

  create_table "adoption_applications", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.integer "animal_id"
    t.integer "shelter_id"
    t.index ["animal_id"], name: "index_adoption_applications_on_animal_id"
    t.index ["shelter_id"], name: "index_adoption_applications_on_shelter_id"
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "breed"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.string "address"
  end

end
