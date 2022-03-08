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

ActiveRecord::Schema.define(version: 2022_03_08_155242) do

  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.string "game_genre"
    t.string "preferred_skills"
    t.integer "team_size"
  end

  create_table "skills", force: :cascade do |t|
    t.integer "users_id"
    t.string "skill_name"
  end

  create_table "squads", force: :cascade do |t|
    t.integer "squad_members"
    t.string "squad_name"
    t.integer "squad_size"
    t.integer "squad_plays"
    t.integer "squad_skills"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "gamertag"
    t.integer "games_id"
    t.integer "skills_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
