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

ActiveRecord::Schema.define(version: 2021_10_05_170711) do

  create_table "matches", force: :cascade do |t|
    t.integer "tutor_id"
    t.integer "student_id"
    t.string "subject"
    t.string "schedule"
    t.string "online_in_person"
    t.string "location"
    t.boolean "matched", default: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "grade"
    t.integer "age"
    t.string "timezone"
    t.string "username"
    t.string "password"
    t.string "img"
  end

  create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "subjects"
    t.integer "rate"
    t.string "online_in_person"
    t.string "gender"
    t.string "bio"
    t.string "availability"
    t.boolean "background_check"
    t.string "timezone"
    t.string "username"
    t.string "password"
    t.string "img"
  end

end
