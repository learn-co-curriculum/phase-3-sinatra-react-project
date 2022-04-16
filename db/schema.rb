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

ActiveRecord::Schema.define(version: 2022_04_15_214424) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "appointment_date"
    t.datetime "appointment_time"
    t.integer "appointment_duration"
    t.string "appointment_reason"
    t.string "appointment_type"
    t.integer "doctor_id"
    t.integer "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "doctor_firstname"
    t.string "doctor_lastname"
    t.string "doctor_phone"
    t.string "doctor_email"
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_firstname"
    t.string "patient_lastname"
    t.string "patient_address"
    t.string "patient_city"
    t.string "patient_state"
    t.string "patient_phone"
    t.string "patient_email"
  end

end
