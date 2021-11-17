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

ActiveRecord::Schema.define(version: 2021_11_16_233102) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
  end

  create_table "characters", force: :cascade do |t|
    t.string "character_name"
    t.integer "movie_id"
    t.integer "actor_id"
    t.index ["actor_id"], name: "index_characters_on_actor_id"
    t.index ["movie_id"], name: "index_characters_on_movie_id"
  end

  create_table "movie_selections", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "movie_id"
    t.index ["movie_id"], name: "index_movie_selections_on_movie_id"
    t.index ["profile_id"], name: "index_movie_selections_on_profile_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "genre"
    t.text "description"
    t.string "thumbnail"
    t.string "backdrop"
    t.integer "rating"
    t.integer "runtime"
    t.string "release_date"
    t.string "movie_link"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "user_name"
    t.string "profile_img"
  end

end
