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

ActiveRecord::Schema.define(version: 2021_11_15_234244) do

  create_table "game_instances", force: :cascade do |t|
    t.integer "winner"
    t.integer "loser"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

#TABLES 
#PLAYERS = KEEPS TRACK OF ALL PLAYER DATA INCLUDING NAME AND WIN/LOSE COUNT
#XS/OS KEEPS TRACK OF WHO WAS XS AND WHO WAS OS IN EACH GAMES
#XES/OS ARE NEEDED BECUASE IF WE HAVE MORE THAB ONE GAME THEN PLAYERS WILL 
#HAS MANY DOES NOT 
# THE FRONT END DOENS'T HAVE TO WORRY TOO MUCH ABOUT XES AND OS IT JUST ADDS SOME FLEXABILITY
# COOLEO 
#game instance tracks who won or lost that game instance 





create_table "os", force: :cascade do |t|
    t.integer "game_instance_id"
    t.integer "player_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name"
    t.integer "player_wins"
    t.integer "player_losses"
    t.string "player_avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "xes", force: :cascade do |t|
    t.integer "game_instance_id"
    t.integer "player_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
