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

ActiveRecord::Schema.define(version: 2022_03_07_191200) do

  create_table "expenses", force: :cascade do |t|
    t.string "description"
    t.float "monthly"
    t.string "annual"
    t.string "frequency"
    t.string "due_date"
    t.string "notes"
    t.integer "user_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.string "description"
    t.float "amount"
    t.integer "user_id"
    t.index ["user_id"], name: "index_incomes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "expense_id"
    t.integer "income_id"
    t.index ["expense_id"], name: "index_users_on_expense_id"
    t.index ["income_id"], name: "index_users_on_income_id"
  end

end
