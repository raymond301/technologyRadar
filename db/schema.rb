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

ActiveRecord::Schema.define(version: 20140313121830) do

  create_table "notes", force: true do |t|
    t.integer  "techspot_id"
    t.text     "text"
    t.string   "editor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "techspots", force: true do |t|
    t.string   "creator"
    t.integer  "x"
    t.integer  "y"
    t.string   "shape",      default: "circle"
    t.string   "color",      default: "red"
    t.string   "name"
    t.string   "url"
    t.string   "desc"
    t.string   "layer",      default: "assess"
    t.string   "sector"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
