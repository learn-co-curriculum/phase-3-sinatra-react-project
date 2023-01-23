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

ActiveRecord::Schema.define(version: 2023_01_23_193020) do

  create_table "Farms", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "rating"
  end

  create_table "Products", force: :cascade do |t|
    t.integer "farm_id"
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "picture_link"
    t.integer "price"
    t.integer "stock"
  end

  create_table "Purchases", force: :cascade do |t|
    t.integer "product_id"
    t.integer "discount"
    t.integer "total"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
