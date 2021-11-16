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

ActiveRecord::Schema.define(version: 2021_11_16_051451) do

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "pilots", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "planes", force: :cascade do |t|
    t.integer "plane_number"
    t.string "destination"
  end

  create_table "seats", force: :cascade do |t|
    t.integer "seat_number"
    t.integer "customer_id"
    t.integer "plane_id"
  end

end
