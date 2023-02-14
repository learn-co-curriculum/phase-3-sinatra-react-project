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

ActiveRecord::Schema.define(version: 2023_02_14_165457) do

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "user_id"
    t.integer "recipe_id"
  end

  create_table "kisses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "image_URL"
    t.string "ingredients"
    t.string "steps"
    t.string "cuisine"
    t.integer "time"
    t.string "difficulty"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "image_URL"
  end

end
