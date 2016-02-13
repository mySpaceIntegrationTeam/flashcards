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

ActiveRecord::Schema.define(version: 20160210221348) do

  create_table "cards", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "title"
    t.integer  "deck_id"
    t.text     "side_a_text"
    t.text     "side_b_text"
    t.text     "side_a_image"
    t.text     "side_b_image"
    t.text     "side_a_math"
    t.text     "side_b_math"
<<<<<<< HEAD
    t.string   "card_back_color"
    t.string   "card_text_color"
=======
    t.boolean  "is_hidden"
>>>>>>> 5ee7864e4ffcb8e7e8ac34afc9a08a304f3f0b0a
  end

  create_table "decks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "creator_id"
    t.date     "published"
    t.integer  "category_id"
    t.integer  "language_id"
<<<<<<< HEAD
    t.string   "back_color",             default: "FFFFFF"
    t.string   "text_color",             default: "000"
=======
>>>>>>> 5ee7864e4ffcb8e7e8ac34afc9a08a304f3f0b0a
    t.date     "updated"
    t.string   "back_color",             default: "AAA", null: false
    t.string   "text_color"
    t.integer  "current_contributer_id"
    t.integer  "downloads"
    t.integer  "views"
    t.integer  "flag_id"
<<<<<<< HEAD
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
=======
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
>>>>>>> 5ee7864e4ffcb8e7e8ac34afc9a08a304f3f0b0a
  end

end
