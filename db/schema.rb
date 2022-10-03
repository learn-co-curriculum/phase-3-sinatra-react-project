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

ActiveRecord::Schema.define(version: 2022_09_30_180722) do

  create_table "decisions", force: :cascade do |t|
    t.string "event_type"
    t.boolean "decided"
    t.string "group_name"
    t.datetime "event_time"
    t.datetime "decision_deadline"
  end

  create_table "options", force: :cascade do |t|
    t.string "option_name"
    t.integer "num_votes"
    t.integer "decision_id"
    t.boolean "chosen"
  end

  create_table "user_decision_joins", force: :cascade do |t|
    t.integer "decision_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "num_decisions_made"
  end

end
