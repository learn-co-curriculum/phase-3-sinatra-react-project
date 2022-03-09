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

ActiveRecord::Schema.define(version: 2022_03_08_001646) do

  create_table "scores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "word_id"
    t.integer "session_score"
    t.integer "guesses"
    t.boolean "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suggestions", force: :cascade do |t|
    t.string "suggested_word"
    t.boolean "approved"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "difficulty"
    t.integer "highscore"
    t.string "ip_address"
  end

  create_table "words", force: :cascade do |t|
    t.string "game_word"
    t.boolean "is_used"
    t.date "date_used"
  end

end
