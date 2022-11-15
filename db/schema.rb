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

ActiveRecord::Schema.define(version: 2022_11_14_220738) do

  create_table "available_dishes", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "dish_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "cuisine"
    t.integer "ingredient_id"
    t.integer "user_id"
    t.boolean "in_stock"
    t.string "comments"
    t.integer "times_cooked"
    t.string "instructions"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.integer "dish_id"
    t.integer "user_id"
    t.boolean "in_stock"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
