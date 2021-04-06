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

ActiveRecord::Schema.define(version: 2021_03_19_171709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.string "title", null: false
    t.integer "user_id", null: false
    t.integer "story_id", null: false
    t.text "body"
    t.integer "chapter_number", null: false
    t.boolean "published", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_chapters_on_story_id"
    t.index ["user_id"], name: "index_chapters_on_user_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "title", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "body", null: false
    t.integer "chapter_id", null: false
    t.integer "commenter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_comments_on_chapter_id"
    t.index ["commenter_id"], name: "index_comments_on_commenter_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "user_id", null: false
    t.string "description", null: false
    t.boolean "complete", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "story_collections", force: :cascade do |t|
    t.integer "collection_id", null: false
    t.integer "story_id", null: false
    t.index ["collection_id", "story_id"], name: "index_story_collections_on_collection_id_and_story_id", unique: true
    t.index ["collection_id"], name: "index_story_collections_on_collection_id"
    t.index ["story_id"], name: "index_story_collections_on_story_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
