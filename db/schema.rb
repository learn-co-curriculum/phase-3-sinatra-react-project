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

ActiveRecord::Schema.define(version: 2021_12_04_191345) do

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "img_url"
    t.integer "release_year"
    t.string "genre"
    t.string "desc"
    t.integer "runtime"
    t.integer "rating"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.integer "movie_id"
    t.integer "show_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
    t.index ["show_id"], name: "index_reviews_on_show_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "title"
    t.string "img_url"
    t.integer "release_year"
    t.string "genre"
    t.string "desc"
    t.integer "total_season"
    t.integer "total_episode"
    t.integer "runtime"
    t.integer "rating"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
  end

end
