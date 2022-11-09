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

ActiveRecord::Schema.define(version: 2022_11_09_125907) do

  create_table "customers", force: :cascade do |t|
    t.string "full_name"
    t.string "address"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "quantity"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.datetime "ordered_at"
    t.integer "amount"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.float "price"
    t.string "description"
    t.string "img_url"
  end

end
