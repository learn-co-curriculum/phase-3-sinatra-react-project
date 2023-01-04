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

ActiveRecord::Schema.define(version: 2023_01_03_203219) do

  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.string "activity_image_url"
    t.string "item_first"
    t.string "item_second"
    t.string "item_third"
  end

  create_table "items", force: :cascade do |t|
    t.string "item_name"
    t.string "item_image_url"
  end

  create_table "purchases", force: :cascade do |t|
    t.string "item_name"
    t.string "review"
    t.integer "star_rating"
    t.float "cost"
    t.integer "activity_id"
    t.integer "store_id"
    t.index ["activity_id"], name: "index_purchases_on_activity_id"
    t.index ["store_id"], name: "index_purchases_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "store_name"
    t.string "address"
    t.string "item_1"
    t.float "item_1_cost"
    t.string "item_2"
    t.float "item_2_cost"
    t.string "item_3"
    t.float "item_3_cost"
    t.string "item_4"
    t.float "item_4_cost"
  end

  add_foreign_key "purchases", "activities"
  add_foreign_key "purchases", "stores"
end
