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

ActiveRecord::Schema.define(version: 2021_10_05_205825) do

  create_table "buyers", force: :cascade do |t|
    t.string "buyer_name"
    t.string "password"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "date"
    t.integer "price"
    t.string "desc"
    t.integer "buyer_id"
    t.integer "seller_id"
    t.index ["buyer_id"], name: "index_pieces_on_buyer_id"
    t.index ["seller_id"], name: "index_pieces_on_seller_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "comment"
    t.integer "piece_id"
    t.index ["piece_id"], name: "index_reviews_on_piece_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "seller_name"
    t.string "password"
  end

end
