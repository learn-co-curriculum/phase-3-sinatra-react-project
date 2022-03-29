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

ActiveRecord::Schema.define(version: 2022_03_29_163758) do

  create_table "appointments", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "physician_id"
    t.date "appt_date"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "id_number"
  end

  create_table "physicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "country"
    t.integer "license_number"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

  create_table "waitListPatients", force: :cascade do |t|
    t.integer "patient_id"
  end

end
