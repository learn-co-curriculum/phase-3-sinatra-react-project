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

ActiveRecord::Schema.define(version: 2022_11_17_050500) do

  create_table "friendships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "following_id"
  end

  create_table "restaurant_images", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "image_url"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "fsq_id"
    t.float "longitude"
    t.float "latitude"
    t.string "neighborhood"
    t.string "formatted_address"
  end

  create_table "reviews", force: :cascade do |t|
    t.boolean "likes"
    t.boolean "dislikes"
    t.boolean "favorited?"
    t.integer "restaurant_id"
    t.integer "user_id"
    t.string "review_detail_comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_hash"
  end

end
