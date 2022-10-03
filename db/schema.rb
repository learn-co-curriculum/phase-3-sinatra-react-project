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

ActiveRecord::Schema.define(version: 2022_10_03_084055) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "publication_date"
    t.string "link_to_article"
    t.string "image_url"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "page_count"
    t.integer "publication_year"
    t.boolean "library_availability"
    t.string "image_url"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "star_rating"
    t.integer "book_id"
    t.integer "user_id"
  end

  create_table "stats", force: :cascade do |t|
    t.boolean "currently_reading"
    t.boolean "finished_reading"
    t.integer "pages_read"
    t.integer "book_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
  end

end
