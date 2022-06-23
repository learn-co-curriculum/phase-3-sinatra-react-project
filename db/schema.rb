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

ActiveRecord::Schema.define(version: 2022_06_22_203259) do

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "age"
    t.string "location"
    t.string "image_url"
    t.string "bio"
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment_text"
    t.integer "cheese_id"
    t.index ["cheese_id"], name: "index_comments_on_cheese_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.integer "cheese_id"
    t.index ["cheese_id"], name: "index_ratings_on_cheese_id"
  end

end
