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

ActiveRecord::Schema.define(version: 2023_01_03_235355) do

  create_table "maintenance_requests", force: :cascade do |t|
    t.string "urgency"
    t.string "description"
    t.float "expected_cost"
    t.float "actual_cost"
    t.string "date_opened"
    t.string "date_closed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.integer "total_units_owned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "address"
    t.string "current_tenant"
    t.boolean "open_request?"
    t.integer "owner_id"
    t.integer "maintenancerequest_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["maintenancerequest_id"], name: "index_units_on_maintenancerequest_id"
    t.index ["owner_id"], name: "index_units_on_owner_id"
  end

end
