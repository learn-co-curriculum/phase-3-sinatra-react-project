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

ActiveRecord::Schema.define(version: 2022_03_07_230647) do

  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.string "img_url"
    t.text "description"
    t.boolean "favorite"
    t.integer "mood_id"
    t.index ["mood_id"], name: "index_activities_on_mood_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "mood_name"
  end

end
