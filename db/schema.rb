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

ActiveRecord::Schema.define(version: 2022_09_12_210555) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "history"
    t.integer "user_id"
    t.integer "template_id"
  end

  create_table "templates", force: :cascade do |t|
    t.integer "level"
    t.string "class_name"
    t.string "race"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "spell1"
    t.string "spell2"
    t.string "ability1"
    t.string "ability2"
    t.string "weapon1"
    t.string "weapon2"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
