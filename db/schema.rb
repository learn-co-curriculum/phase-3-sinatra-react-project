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

ActiveRecord::Schema.define(version: 2022_05_10_185647) do

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "liked_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "likes_id_1"
    t.integer "likes_id_2"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
    t.string "profile_picture"
    t.string "bio"
    t.string "gender"
    t.string "interests"
  end

end
