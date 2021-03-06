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

ActiveRecord::Schema.define(version: 20171115142209) do

  create_table "arts", force: :cascade do |t|
    t.string "titre"
    t.integer "author_id"
    t.string "typeart"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "birth"
    t.string "death"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "biblicals", force: :cascade do |t|
    t.text "quote"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.date "day"
    t.boolean "allday"
    t.time "start"
    t.time "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learns", force: :cascade do |t|
    t.text "quote"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saints", force: :cascade do |t|
    t.date "day"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "site_name"
    t.text "slider_message"
    t.integer "slider_interval"
    t.boolean "slider_birthday"
    t.boolean "slider_event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "slider_saint"
    t.boolean "slider_menu"
    t.string "url_menu"
    t.boolean "full_welcome"
    t.boolean "slider_meteo"
    t.text "meteo_code"
    t.boolean "slider_biblical"
    t.boolean "slider_learn"
    t.boolean "slider_art"
  end

  create_table "slides", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.date "start"
    t.date "end"
    t.boolean "welcome"
    t.boolean "saint"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "class_room"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
