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

ActiveRecord::Schema.define(version: 2022_11_15_162911) do

  create_table "address_details", force: :cascade do |t|
    t.integer "customer_id"
    t.string "label"
    t.string "address_name"
    t.string "address"
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "product_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
  end

  create_table "customers", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.integer "phone_number"
    t.string "customer_name"
    t.string "gender"
  end

  create_table "images", force: :cascade do |t|
    t.integer "product_id"
    t.string "image_1"
    t.string "image_2"
    t.string "image_3"
    t.string "image_4"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "product_id"
    t.integer "S_quantity"
    t.integer "M_quantity"
    t.integer "L_quantity"
  end

  create_table "order_histories", force: :cascade do |t|
    t.integer "address_detail_id"
    t.integer "payment_detail_id"
    t.integer "product_id"
    t.integer "customer_id"
    t.datetime "date"
  end

  create_table "payment_details", force: :cascade do |t|
    t.integer "customer_id"
    t.string "payment_name"
    t.integer "cc_number"
    t.integer "exp_code"
    t.integer "cvc"
    t.string "billing_address"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.float "price"
    t.integer "subcategory_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "subcategory_name"
    t.integer "category_id"
  end

end
