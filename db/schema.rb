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

ActiveRecord::Schema.define(version: 2022_12_07_164036) do

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.string "image_url"
    t.string "catalog_number"
    t.integer "review_id"
    t.integer "band_id"
    t.index ["band_id"], name: "index_albums_on_band_id"
    t.index ["review_id"], name: "index_albums_on_review_id"
  end

  create_table "bands", force: :cascade do |t|
    t.string "artist_name"
    t.string "genre"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
  end

end
