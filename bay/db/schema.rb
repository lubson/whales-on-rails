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

ActiveRecord::Schema.define(version: 20140212224504) do

  create_table "c_narodnosts", force: true do |t|
    t.integer  "poradi"
    t.string   "kod",        limit: 6
    t.string   "nazev",      limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "c_povolanis", force: true do |t|
    t.integer  "poradi"
    t.string   "kod",        limit: 6
    t.string   "nazev",      limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "c_rodinny_stavs", force: true do |t|
    t.integer  "poradi"
    t.string   "kod",        limit: 6
    t.string   "nazev",      limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "c_tituls", force: true do |t|
    t.integer  "poradi"
    t.string   "kod",        limit: 6
    t.string   "nazev",      limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "c_vzdelanis", force: true do |t|
    t.integer  "poradi"
    t.string   "kod",        limit: 6
    t.string   "nazev",      limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ucastniks", force: true do |t|
    t.string   "jmeno",             limit: 20
    t.string   "prijmeni",          limit: 35
    t.datetime "narozen"
    t.integer  "pohlavi"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "c_narodnost_id"
    t.string   "email",             limit: 40
    t.string   "telefon",           limit: 20
    t.datetime "posledni_navsteva"
    t.integer  "c_titul_id"
    t.integer  "c_rodinny_stav_id"
    t.integer  "c_povolani_id"
    t.integer  "c_vzdelani_id"
  end

  add_index "ucastniks", ["c_narodnost_id"], name: "index_ucastniks_on_c_narodnost_id"
  add_index "ucastniks", ["c_povolani_id"], name: "index_ucastniks_on_c_povolani_id"
  add_index "ucastniks", ["c_rodinny_stav_id"], name: "index_ucastniks_on_c_rodinny_stav_id"
  add_index "ucastniks", ["c_titul_id"], name: "index_ucastniks_on_c_titul_id"
  add_index "ucastniks", ["c_vzdelani_id"], name: "index_ucastniks_on_c_vzdelani_id"

end
