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

ActiveRecord::Schema.define(version: 2022_06_21_175826) do

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "emojis", force: :cascade do |t|
    t.string "feeling"
    t.string "icon"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "image"
    t.integer "emoji_id"
    t.integer "drink_id"
  end

end
