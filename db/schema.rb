# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_01_161638) do

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.string "hexcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "palettes", force: :cascade do |t|
    t.string "name"
    t.integer "color_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_palettes_on_color_id"
    t.index ["user_id"], name: "index_palettes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
