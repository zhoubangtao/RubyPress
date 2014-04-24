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
    t.string   "login",        default: "", limit: 60,  null: false # login name
    t.string   "pass",         default: "", limit: 64,  null: false # login password
    t.string   "nickname",     default: "", limit: 50,  null: false #nickname of the user
    t.string   "email",        default: "", limit: 100, null: false
    t.string   "url",          default: "", limit: 100, null: false
    t.string   "activation",   default: "", limit: 60,  null: false
    t.integer  "status",       default: 0,  limit: 11,  null: false
    t.string   "display_name", default: "", limit: 250, null: false
    t.datatime "create_at",                             null: false # register datetime
    t.datetime "update_at",                             null: false # update datetime
  end

  create_table "user_extras", force: true do |t|
    t.integer "user_id"
    t.string  "key",    limit: 255
    t.text    "value"
  end

  create_table "posts", force: true do |t|
    t.integer  "user",                               null: false
    t.string   "title",                              null: false
    t.text     "content",                            null: false
    t.text     "excerpt",                            null: false
    t.string   "status",         default: "publish", null:false
    t.string   "comment_status", default: "open",    null: false
    t.string   "ping_status",    default: "open"
    t.string   "password"
    t.string   "name"
    t.text     "to_ping"
    t.text     "pinged"
    t.datetime "modified"
    t.datetime "modified_gmt"
    t.text     "content_filtered"
    t.integer  "parent"
    t.string   "guid"
    t.integer  "menu_order"
    t.string   "type"
    t.string   "mime_type"
    t.integer  "comments_count"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "post_extras", force: true do |t|
    t.integer "post_id"
    t.string "key"
    t.string "value"
  end

  create_table "comments", force: true do |t|
    t.integer  "post_id",      default: 0
    t.string   "author"
    t.string   "author_email", default: ""
    t.string   "author_url",   default: ""
    t.string   "author_ip",    default: ""
    t.text     "content"
    t.integer  "karma",        default: 0
    t.string   "approved",     default: 1
    t.string   "agent",        default: ""
    t.string   "type",         default: ""
    t.string   "parent",       default: 0
    t.integer  "user_id",      default: 0
    t.datetime "create_at"
    t.datetime "create_at_gmt"
  end

  create_table "comment_extras", force: true do |t|
    t.integer "comment_id",            null: false
    t.string  "key",       limit: 255
    t.text    "value"
  end

  add_index "comment_extras", "key"

  create_table "links", force: true do |t|
    t.string   "url",         default: ""
    t.string   "name",        default: ""
    t.string   "image",       default: ""
    t.string   "target",      default: ""
    t.string   "description", default: ""
    t.string   "visible",     default: "Y"
    t.integer  "owner",       default: 1
    t.integer  "rating",      default: 0
    t.string   "rel",         default: ""
    t.text     "notes"
    t.string   "rss",         default: ""
    t.datetime "create_at"
    t.datetime "update_at"
  end

  create_table "options", force: true do |t|
    t.string  "name",     default: "yes"
    t.string  "value"
    t.string  "autoload", default: ""
  end

end
