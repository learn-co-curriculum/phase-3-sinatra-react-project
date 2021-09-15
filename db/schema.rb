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

ActiveRecord::Schema.define(version: 2021_09_15_022310) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "card_type"
    t.string "subset"
    t.integer "cost"
    t.integer "damage"
    t.integer "shield"
    t.integer "heal"
    t.integer "upgrade"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "max_HP"
    t.integer "current_HP"
    t.integer "max_energy"
    t.integer "current_energy"
    t.integer "shield"
  end

end
