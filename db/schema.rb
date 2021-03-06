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

ActiveRecord::Schema.define(version: 20140918131358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abiturients", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "img"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "notification"
  end

  create_table "addresses", force: true do |t|
    t.string   "title"
    t.string   "address"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "coord"
  end

  create_table "annonces", force: true do |t|
    t.string   "title"
    t.datetime "date"
    t.text     "body"
    t.boolean  "notification"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "articles", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facults", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.integer  "facult_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_items", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "image"
  end

  create_table "organisations", force: true do |t|
    t.string   "typeof"
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "typeof"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.string   "title"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "typeof"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "star"
    t.integer  "teacher_id"
    t.string   "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "day"
    t.integer  "group_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
