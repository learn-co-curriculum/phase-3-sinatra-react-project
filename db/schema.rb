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

ActiveRecord::Schema.define(version: 2022_01_03_184211) do

  create_table "households", force: :cascade do |t|
    t.string "household_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "age"
    t.string "species"
    t.integer "household_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["household_id"], name: "index_pets_on_household_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "household_id"
    t.integer "user_id"
    t.integer "pet_id"
    t.string "task_name"
    t.datetime "task_due_date"
    t.datetime "task_end_date"
    t.string "task_location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["household_id"], name: "index_tasks_on_household_id"
    t.index ["pet_id"], name: "index_tasks_on_pet_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "household_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["household_id"], name: "index_users_on_household_id"
  end

end
