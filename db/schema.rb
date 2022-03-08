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

ActiveRecord::Schema.define(version: 2022_03_08_001739) do

  create_table "poses", force: :cascade do |t|
    t.string "sanskrit_name"
    t.string "english_name"
    t.string "img_url"
  end

  create_table "yoga_class_poses", force: :cascade do |t|
    t.integer "yoga_class_id"
    t.integer "pose_id"
  end

  create_table "yoga_classes", force: :cascade do |t|
    t.string "teacher_name"
    t.string "class_name"
    t.string "class_time"
  end

end
