# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160206175412) do

  create_table "cards", force: :cascade do |t|
    t.integer  "card_id"
    t.text     "background_color"
    t.text     "content"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "deck_id"
    t.text     "side_a_text"
    t.text     "side_b_text"
    t.text     "side_a_image"
    t.text     "side_b_image"
    t.text     "side_a_math"
    t.text     "side_b_math"
  end

  create_table "decks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "creator_id"
    t.date     "published"
    t.integer  "category_id"
    t.integer  "language_id"
    t.date     "updated"
    t.integer  "current_contributer_id"
    t.integer  "downloads"
    t.integer  "views"
    t.integer  "flag_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
