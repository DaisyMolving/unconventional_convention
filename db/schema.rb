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

ActiveRecord::Schema.define(version: 20150817104458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  create_table "gallery_images", force: :cascade do |t|
    t.string   "image_path"
    t.string   "image_caption"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
