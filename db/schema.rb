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

ActiveRecord::Schema.define(version: 20151126054239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_images", force: :cascade do |t|
    t.string   "image_path"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "image_path_backup"
  end

  create_table "item_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.integer  "image_id"
    t.string   "loan_status"
    t.float    "price"
    t.integer  "report"
    t.integer  "user_id"
    t.string   "location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "borrower_id"
    t.string   "item_details"
    t.string   "lat"
    t.string   "lng"
    t.string   "city"
    t.string   "state"
    t.string   "listdata"
    t.integer  "postcode"
  end

  create_table "profile_avatars", force: :cascade do |t|
    t.string   "image_path"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "postcode"
    t.string   "email"
    t.string   "profile_avatar"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "Items_on_loan"
    t.string   "state"
    t.string   "city"
    t.string   "username"
  end

end
