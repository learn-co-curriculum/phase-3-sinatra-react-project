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

ActiveRecord::Schema.define(version: 2022_12_07_170657) do

  create_table "bubbleteas", force: :cascade do |t|
    t.string "image_url"
    t.string "menu_name"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "review"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "price"
    t.integer "customer_id"
    t.integer "bubbletea_id"
    t.string "size"
  end

end
