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

ActiveRecord::Schema.define(version: 2022_09_12_182359) do

  create_table "days", force: :cascade do |t|
    t.string "name"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "day_id"
    t.integer "recipe_id"
  end

  create_table "quantities", force: :cascade do |t|
    t.integer "amount"
    t.integer "recipe_id"
    t.integer "ingredient_id"
  end

  create_table "recipies", force: :cascade do |t|
    t.string "name"
  end

end
