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

ActiveRecord::Schema.define(version: 2022_11_15_161615) do

  create_table "chatrooms", force: :cascade do |t|
    t.string "title"
    t.datetime "timestamp"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id_id"
    t.integer "chatroom_id_id"
    t.string "message"
    t.datetime "timestmap"
    t.index ["chatroom_id_id"], name: "index_messages_on_chatroom_id_id"
    t.index ["user_id_id"], name: "index_messages_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "teacher"
    t.boolean "student"
    t.string "password"
  end

end
