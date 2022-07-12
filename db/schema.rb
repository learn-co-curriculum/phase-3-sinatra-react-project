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

ActiveRecord::Schema.define(version: 2022_07_12_224357) do

  create_table "business_hours", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "day_of_week"
    t.time "opens_at"
    t.time "closes_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
  end

  create_table "item_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "item_image_url"
    t.integer "category_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "price"
    t.boolean "is_special"
    t.integer "item_id"
  end

  create_table "ordered_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "menu_item_id"
    t.integer "quantity"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "is_completed"
    t.integer "restaurant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "restaurant_id"
    t.float "rating"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.integer "cuisine_id"
    t.integer "delivery_time"
    t.string "display_image_url"
    t.integer "price_gauge"
  end

end
