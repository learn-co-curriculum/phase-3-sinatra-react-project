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

ActiveRecord::Schema.define(version: 2022_02_15_172309) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "collections", force: :cascade do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "inventory"
    t.float "retail_price"
    t.string "image"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "quantity"
    t.float "supplier_price"
    t.integer "product_id"
    t.integer "supplier_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
  end

end
