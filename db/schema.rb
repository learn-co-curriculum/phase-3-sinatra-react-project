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

ActiveRecord::Schema.define(version: 2022_11_13_180723) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "cars", force: :cascade do |t|
    t.string "category"
    t.string "model"
    t.string "fuel_type"
    t.integer "price"
    t.integer "seats"
    t.string "front_url"
    t.string "inside_url"
    t.string "back_url"
    t.string "side_url"
    t.integer "quantity"
    t.integer "year"
    t.string "transmission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.integer "car_id"
    t.datetime "created_at"
    t.string "email"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "buyer_id"
    t.integer "car_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
