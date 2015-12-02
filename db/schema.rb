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

ActiveRecord::Schema.define(version: 20151127120224) do

  create_table "admins", force: true do |t|
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

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "albums", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_uid"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "keywords"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cakes", force: true do |t|
    t.string   "cake_name"
    t.text     "cake_description"
    t.string   "cakeimage_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candies", force: true do |t|
    t.string   "candy_name"
    t.text     "candy_description"
    t.string   "candyimage_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "pic_name"
    t.text     "pic_description"
    t.string   "picimage_uid"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pies", force: true do |t|
    t.string   "pie_name"
    t.text     "pie_description"
    t.string   "pieimage_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
