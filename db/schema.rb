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

ActiveRecord::Schema.define(version: 20140424025246) do

  create_table "users", force: true do |t|
    t.string   "login", null: false # login name
    t.string   "pass", null: false # login password
    t.string   "nickname", null: false #nickname of the user
    t.string   "email", null: false
    t.string   "url", null: false
    t.datatime "registered", null: false # register datetime
    t.string   "activation", null: false
    t.integer  "status", null: false
    t.string   "display_name", null: false
  end

  create_table "posts", force: true do |t|
    t.integer  "user", null: false
    t.string   "title", null: false
    t.text   "content", null: false
    t.text   "excerpt", null: false
    t.string "status", null:false
    t.string "comment_status", null: false
    t.string "ping_status"
    t.string "password"
    t.string "name"
    t.text "to_ping"
    t.text "pinged"
    t.datetime "modified"
    t.datetime "modified_gmt"
    t.text "content_filtered"
    t.integer "parent"
    t.string "guid"
    t.integer "menu_order"
    t.string "type"
    t.string "mime_type"
    t.integer "comment_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: true do |t|
    t.integer "post_id"
    t.string "author"
    t.string "author_email"
    t.string "author_url"
    t.string "author_ip"
    t.datetime "date"
    t.datetime "date_gmt"
    t.text "content"
    t.integer "karma"
    t.string "approved"
    t.string "agent"
    t.string "type"
    t.string "parent"
    t.integer "user_id"
  end

  create_table "links", force: true do |t|
    t.integer "id"
    t.string "url"
    t.string "name"
    t.string "image"
    t.string "target"
    t.string "description"
    t.string "visible"
    t.integer "owner"
    t.integer "rating"
    t.string "rel"
    t.text "notes"
    t.string "rss"
    t.datetime "create_at"
    t.datetime "update_at"
  end

  create_table "options", force: true do |t|
    t.integer "id"
    t.string "name"
    t.string "value"
    t.string "autoload"
  end

end
