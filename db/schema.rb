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

ActiveRecord::Schema.define(version: 2022_11_14_171842) do

  create_table "stock_prices", force: :cascade do |t|
    t.datetime "date"
    t.float "open"
    t.float "high"
    t.float "low"
    t.float "close"
    t.integer "stock_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.text "ticker"
    t.text "company"
  end

  create_table "users", force: :cascade do |t|
    t.text "user_name"
    t.text "password"
    t.float "balance"
  end

  create_table "userstocks_joins", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stock_id"
  end

  create_table "watchlists", force: :cascade do |t|
    t.integer "user_id"
  end

  create_table "watchstocks_joins", force: :cascade do |t|
    t.integer "watchlist_id"
    t.integer "stock_id"
  end

end
