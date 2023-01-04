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

ActiveRecord::Schema.define(version: 2023_01_04_152846) do

  create_table "categories", force: :cascade do |t|
    t.boolean "urgent"
  end

  create_table "days", force: :cascade do |t|
    t.string "day_of_week"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "description"
    t.integer "category_id"
    t.integer "day_id"
    t.index ["category_id"], name: "index_tasks_on_category_id"
    t.index ["day_id"], name: "index_tasks_on_day_id"
  end

end
