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

ActiveRecord::Schema.define(version: 20160531065252) do

  create_table "admins", force: :cascade do |t|
    t.integer  "forum",      default: 6
    t.integer  "rank",       default: 6
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "admins", ["user_id"], name: "index_admins_on_user_id"

  create_table "apis", force: :cascade do |t|
    t.integer  "keyid"
    t.string   "vcode"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "apis", ["user_id"], name: "index_apis_on_user_id"

  create_table "characters", force: :cascade do |t|
    t.string   "character"
    t.integer  "user_id"
    t.string   "corporation"
    t.integer  "corporationid"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id"

  create_table "mentors", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mentors", ["user_id"], name: "index_mentors_on_user_id"

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.text     "article"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "news", ["user_id"], name: "index_news_on_user_id"

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "programs", ["user_id"], name: "index_programs_on_user_id"

  create_table "usernames", force: :cascade do |t|
    t.string   "username"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "usernames", ["user_id"], name: "index_usernames_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "view_settings", force: :cascade do |t|
    t.integer  "corporation_information", default: 1
    t.integer  "programs",                default: 1
    t.integer  "operations",              default: 1
    t.integer  "communications",          default: 1
    t.integer  "finances",                default: 1
    t.integer  "general_information",     default: 1
    t.integer  "new_members",             default: 1
    t.integer  "eve_account_information", default: 1
    t.integer  "officers",                default: 1
    t.integer  "directors",               default: 1
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "view_settings", ["user_id"], name: "index_view_settings_on_user_id"

end
