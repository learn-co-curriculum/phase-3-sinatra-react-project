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

ActiveRecord::Schema.define(version: 2022_04_18_151219) do

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "estimated_time"
    t.integer "actual_time"
    t.integer "scariness"
    t.boolean "finished"
    t.datetime "created_time"
    t.datetime "finished_time"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
