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

ActiveRecord::Schema.define(version: 20140508215715) do

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "year"
    t.string   "integer"
    t.string   "rated"
    t.string   "released"
    t.string   "genre"
    t.string   "director"
    t.string   "writer"
    t.string   "actors"
    t.string   "plot"
    t.string   "language"
    t.string   "country"
    t.string   "award"
    t.string   "poster"
    t.string   "metascore"
    t.string   "imdbrating"
    t.string   "imdbvotes"
    t.string   "type"
    t.string   "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
