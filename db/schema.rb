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

ActiveRecord::Schema.define(version: 2022_04_21_021618) do

  create_table "game_relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.boolean "owned?"
    t.boolean "played?"
    t.boolean "liked?"
    t.string "comment"
    t.integer "hours_played"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image_url"
    t.float "rating"
    t.integer "min_play_time"
    t.integer "max_play_time"
    t.integer "min_players"
    t.integer "max_players"
    t.integer "min_age"
    t.boolean "is_expansion"
    t.string "mechanics"
    t.string "categories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profile_pics", force: :cascade do |t|
    t.string "picture_src"
    t.string "alt_text"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "profile_pic_id"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "profile_pic_src"
  end

end
