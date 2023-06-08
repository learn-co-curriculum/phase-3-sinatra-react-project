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

ActiveRecord::Schema.define(version: 2023_06_08_114059) do

  create_table "credentials", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.integer "user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "speciality"
    t.string "avatar_url"
    t.string "experience"
    t.string "interests"
    t.string "hobies"
    t.datetime "date_of_birth"
    t.string "locale"
    t.string "address"
    t.string "education"
    t.string "name"
  end

end
