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

ActiveRecord::Schema.define(version: 20160512223018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                               null: false
    t.string   "last_name",                                null: false
    t.string   "location"
    t.string   "industry"
    t.string   "picture_url",                              null: false
    t.string   "public_profile_url",                       null: false
    t.string   "current_title"
    t.string   "current_company"
    t.string   "type"
    t.string   "status",             default: "available"
    t.string   "mission_statement"
    t.string   "linkedin_id",                              null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

end
