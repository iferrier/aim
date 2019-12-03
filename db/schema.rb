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

ActiveRecord::Schema.define(version: 2019_12_02_121022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.text "campaign_description"
    t.string "cause"
    t.string "campaign_picture"
    t.string "location"
    t.string "organisation"
    t.date "launch_date"
    t.boolean "live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brand_logo"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_comments_on_campaign_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "selections", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_selections_on_campaign_id"
    t.index ["user_id"], name: "index_selections_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "instagram"
    t.string "location"
    t.text "bio"
    t.string "picture"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "campaigns"
  add_foreign_key "comments", "users"
  add_foreign_key "selections", "campaigns"
  add_foreign_key "selections", "users"
end
