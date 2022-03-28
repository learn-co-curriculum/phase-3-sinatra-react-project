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

ActiveRecord::Schema.define(version: 2022_03_28_170910) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "days", force: :cascade do |t|
    t.date "date"
    t.integer "day_of_week"
    t.boolean "special_date"
    t.string "special_date_desc"
  end

  create_table "priorities", force: :cascade do |t|
    t.integer "value"
    t.string "description"
  end

  create_table "repeated_tasks", force: :cascade do |t|
    t.integer "start_day_id"
    t.integer "end_day_id"
    t.integer "category_id"
    t.integer "priority_id"
    t.integer "interval_value"
    t.string "interval_unit"
    t.string "title"
    t.string "description"
    t.string "location"
    t.time "start_time"
    t.time "end_time"
    t.boolean "background_task"
    t.index ["category_id"], name: "index_repeated_tasks_on_category_id"
    t.index ["end_day_id"], name: "index_repeated_tasks_on_end_day_id"
    t.index ["priority_id"], name: "index_repeated_tasks_on_priority_id"
    t.index ["start_day_id"], name: "index_repeated_tasks_on_start_day_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "start_day_id"
    t.integer "end_day_id"
    t.integer "category_id"
    t.integer "priority_id"
    t.integer "repeated_task_id"
    t.string "title"
    t.string "description"
    t.string "location"
    t.time "start_time"
    t.time "end_time"
    t.boolean "background_task"
    t.index ["category_id"], name: "index_tasks_on_category_id"
    t.index ["end_day_id"], name: "index_tasks_on_end_day_id"
    t.index ["priority_id"], name: "index_tasks_on_priority_id"
    t.index ["repeated_task_id"], name: "index_tasks_on_repeated_task_id"
    t.index ["start_day_id"], name: "index_tasks_on_start_day_id"
  end

end
