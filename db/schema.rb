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

ActiveRecord::Schema.define(version: 2023_01_24_001828) do

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "description"
    t.string "actor"
    t.integer "movie_length"
    t.integer "rating"
    t.string "esrb_rating"
  end

  create_table "queues", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.string "profile_picture"
  end

end
