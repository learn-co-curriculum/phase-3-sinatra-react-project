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

ActiveRecord::Schema.define(version: 2022_08_03_003350) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
    t.integer "weight"
    t.string "image"
  end

  create_table "orders", force: :cascade do |t|
    t.string "item"
    t.integer "quantity"
    t.string "dog_id"
    t.string "supplier_id"
    t.string "pickup_date"
    t.float "price"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "product"
  end

end
