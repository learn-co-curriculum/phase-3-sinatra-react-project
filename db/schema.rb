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

ActiveRecord::Schema.define(version: 2022_07_14_224053) do

  create_table "hole_scores", force: :cascade do |t|
    t.integer "hole_num"
    t.integer "par"
    t.integer "num_strokes"
    t.integer "num_putts"
    t.boolean "fairway_hit"
    t.integer "round_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
  end

  create_table "rounds", force: :cascade do |t|
    t.datetime "round_date"
    t.integer "player_id"
  end

  create_table "score_totals", force: :cascade do |t|
    t.string "course_name"
    t.string "round_date"
    t.string "score_to_par"
    t.string "strokes"
    t.string "total_putts"
    t.string "fairways_hit"
    t.integer "player_id"
  end

end
