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

ActiveRecord::Schema.define(version: 20150821115029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "guestname"
    t.string   "guestemail"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "footnote"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "about_us_para_one"
    t.string   "about_us_para_two"
    t.string   "about_us_para_three"
    t.string   "about_us_para_four"
    t.string   "about_us_para_five"
    t.string   "event_url"
  end

  create_table "gallery_images", force: :cascade do |t|
    t.string   "image_caption"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "asset"
  end

  create_table "mailing_lists", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "organisers", force: :cascade do |t|
    t.string   "headshot"
    t.string   "title"
    t.string   "email"
    t.string   "twitter_handle"
    t.string   "personal_site"
    t.string   "description"
    t.string   "article_links"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "article_link_two"
    t.string   "article_link_three"
  end

  create_table "rails_admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "rails_admins", ["email"], name: "index_rails_admins_on_email", unique: true, using: :btree
  add_index "rails_admins", ["reset_password_token"], name: "index_rails_admins_on_reset_password_token", unique: true, using: :btree

end
