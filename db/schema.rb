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

ActiveRecord::Schema.define(version: 20170622061541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abstracts", force: :cascade do |t|
    t.integer  "content_id",  null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["content_id"], name: "index_abstracts_on_content_id", using: :btree
  end

  create_table "bodies", force: :cascade do |t|
    t.integer  "content_id"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_bodies_on_content_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "content_id"
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_comments_on_content_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "contents", force: :cascade do |t|
    t.string   "name",                      null: false
    t.integer  "content_type",              null: false
    t.integer  "status",       default: -1
    t.integer  "access_count", default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name"], name: "index_contents_on_name", using: :btree
  end

  create_table "links", force: :cascade do |t|
    t.integer  "content_id"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_links_on_content_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
