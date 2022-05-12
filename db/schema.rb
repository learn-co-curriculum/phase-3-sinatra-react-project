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

ActiveRecord::Schema.define(version: 2022_05_12_153712) do

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "img"
    t.integer "menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
  end

  create_table "review_sections", force: :cascade do |t|
    t.string "name"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.string "name"
    t.integer "review_section_id"
  end

end
