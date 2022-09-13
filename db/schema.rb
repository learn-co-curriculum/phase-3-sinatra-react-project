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

ActiveRecord::Schema.define(version: 2022_09_12_224209) do

  create_table "abilities", force: :cascade do |t|
    t.string "ability_name"
    t.text "ability_description"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "history"
    t.integer "user_id"
    t.integer "template_id"
  end

  create_table "spells", force: :cascade do |t|
    t.string "spell_name"
    t.text "spell_description"
  end

  create_table "template_abilities", force: :cascade do |t|
    t.integer "template_id"
    t.integer "ability_id"
  end

  create_table "template_spells", force: :cascade do |t|
    t.integer "template_id"
    t.integer "spell_id"
  end

  create_table "template_weapons", force: :cascade do |t|
    t.integer "template_id"
    t.integer "weapon_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "class_name"
    t.text "class_description"
    t.integer "level"
    t.string "image_url"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "gold"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "weapon_name"
    t.text "weapon_description"
  end

end
