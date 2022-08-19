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

ActiveRecord::Schema.define(version: 2022_08_19_151727) do

  create_table "char_feats", force: :cascade do |t|
    t.integer "character_id"
    t.integer "feat_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "klass_id"
    t.integer "race_id"
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
  end

  create_table "feats", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "prerequisites"
  end

  create_table "klass_spells", force: :cascade do |t|
    t.integer "klass_id"
    t.integer "spell_id"
  end

  create_table "klasses", force: :cascade do |t|
    t.string "name"
    t.string "klass_levels"
    t.integer "hit_die"
    t.string "proficiencies"
    t.string "proficiency_choices"
    t.string "saving_throws"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "speed"
    t.string "ability_bonuses"
    t.string "starting_proficiencies"
    t.string "proficiency_choices"
    t.string "languages"
    t.string "size"
    t.string "traits"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "range"
    t.string "casting_time"
    t.string "duration"
    t.integer "level"
    t.boolean "concentration"
    t.boolean "ritual"
  end

end
