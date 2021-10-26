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

ActiveRecord::Schema.define(version: 2021_10_26_142727) do

  create_table "card_decks", force: :cascade do |t|
    t.integer "deck_id"
    t.integer "card_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.integer "hero_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
