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

ActiveRecord::Schema.define(version: 2022_06_21_175259) do

  create_table "games", force: :cascade do |t|
    t.integer "player_id"
    t.integer "word_id"
    t.index ["player_id"], name: "index_games_on_player_id"
    t.index ["word_id"], name: "index_games_on_word_id"
  end

  create_table "guesses", force: :cascade do |t|
    t.string "input"
    t.string "hint"
    t.integer "word_id"
    t.integer "game_id"
    t.index ["game_id"], name: "index_guesses_on_game_id"
    t.index ["word_id"], name: "index_guesses_on_word_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "input_name"
  end

  create_table "words", force: :cascade do |t|
    t.string "game_word"
  end

end
