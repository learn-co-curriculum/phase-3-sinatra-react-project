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

ActiveRecord::Schema.define(version: 2022_10_04_162650) do

  create_table "matches", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "receiver_id"
    t.string "status"
    t.boolean "first_message_sent", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_id"], name: "index_matches_on_receiver_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "message_sender_id"
    t.integer "message_receiver_id"
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_receiver_id"], name: "index_messages_on_message_receiver_id"
    t.index ["message_sender_id"], name: "index_messages_on_message_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "email"
    t.integer "age"
    t.text "bio"
    t.string "profile_img"
    t.string "desired_sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "matches", "users"
  add_foreign_key "matches", "users", column: "receiver_id"
  add_foreign_key "messages", "users", column: "message_receiver_id"
  add_foreign_key "messages", "users", column: "message_sender_id"
end
