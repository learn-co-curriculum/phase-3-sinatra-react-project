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

ActiveRecord::Schema.define(version: 2021_11_15_083436) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.date "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "newsletters", force: :cascade do |t|
    t.string "name"
    t.string "frequency"
  end

  create_table "subscribers", force: :cascade do |t|
    t.integer "newsletter_id"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_subscribers_on_customer_id"
    t.index ["newsletter_id"], name: "index_subscribers_on_newsletter_id"
  end

end
