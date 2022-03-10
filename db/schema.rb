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

ActiveRecord::Schema.define(version: 2022_03_07_215502) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.integer "filmography_count"
    t.string "recent_title_year"
    t.string "profile_image_url"
  end

  create_table "critics", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "release_year"
    t.string "rating"
    t.string "poster_image_url"
    t.integer "run_time"
    t.integer "audience_score"
    t.string "score_sentiment"
    t.integer "critics_score"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "critic_id"
    t.integer "movie_id"
    t.string "content"
    t.string "creation_date"
    t.string "score_ori"
    t.string "score_sentiment"
    t.string "review_url"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "actor_id"
    t.integer "movie_id"
  end

end
