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

ActiveRecord::Schema.define(version: 2022_03_07_224546) do

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.string "release_date"
    t.integer "downloads"
    t.integer "duration"
    t.integer "artist_id"
    t.string "album_cover"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.integer "followers"
    t.string "about"
  end

  create_table "playlist_songs", force: :cascade do |t|
    t.integer "playlist_id"
    t.integer "song_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "creation_date"
    t.datetime "last_update"
    t.integer "duration"
    t.string "name"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.integer "album_id"
    t.string "genre"
    t.string "youtube_link"
    t.integer "duration"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "email"
  end

end
