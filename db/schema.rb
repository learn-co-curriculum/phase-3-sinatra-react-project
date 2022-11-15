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

ActiveRecord::Schema.define(version: 2022_11_14_231548) do

  create_table "favorites", force: :cascade do |t|
    t.string "food_name"
    t.integer "likes"
    t.integer "restaurant_id"
    t.index ["restaurant_id"], name: "index_favorites_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "description"
    t.string "cuisine"
    t.string "website"
    t.string "menu"
    t.string "price"
    t.string "image_url"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "username"
    t.string "date"
    t.integer "rating"
    t.string "review"
    t.integer "restaurant_id"
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

end
