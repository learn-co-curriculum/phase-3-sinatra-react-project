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

ActiveRecord::Schema.define(version: 2022_05_11_042921) do

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "course"
    t.string "name"
    t.string "ingredients"
    t.integer "price"
    t.string "image_url"
    t.integer "restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "customer_id"
    t.integer "menu_item_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review_details"
    t.integer "star_rating"
    t.integer "customer_id"
    t.integer "restaurant_id"
  end

end
