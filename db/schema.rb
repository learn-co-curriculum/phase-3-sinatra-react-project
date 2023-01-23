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

ActiveRecord::Schema.define(version: 2023_01_23_183538) do

  create_table "buyers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.datetime "time_stamp"
  end

  create_table "items", force: :cascade do |t|
    t.integer "buyer_id"
    t.integer "sell_id"
    t.string "name"
    t.string "category"
    t.integer "price"
    t.integer "stock"
    t.string "description"
    t.string "picture_link"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.integer "rating"
  end

end
