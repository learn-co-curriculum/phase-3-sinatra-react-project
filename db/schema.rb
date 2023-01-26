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

ActiveRecord::Schema.define(version: 5) do

  create_table "bar_crawls", force: :cascade do |t|
    t.string "bar_crawl_bars"
    t.string "bar_crawl_name"
    t.integer "user_id"
  end

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "category"
    t.string "price"
    t.integer "closing_time"
    t.string "location"
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_bars_on_owner_id"
  end

  create_table "favorite_bars", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bar_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "star_rating"
    t.text "content"
    t.integer "bar_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "display_name"
    t.string "username"
    t.string "password"
  end

end
