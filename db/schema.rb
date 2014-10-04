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

ActiveRecord::Schema.define(version: 20141004020522) do

  create_table "attendees", force: true do |t|
    t.string   "address"
    t.string   "allergies"
    t.string   "church"
    t.string   "diet_requirements"
    t.date     "dob"
    t.string   "e_email"
    t.integer  "e_h_phone"
    t.integer  "e_m_phone"
    t.string   "e_name"
    t.string   "e_relationship"
    t.integer  "e_w_phone"
    t.string   "f_name"
    t.string   "g_email"
    t.integer  "g_h_phone"
    t.integer  "g_m_phone"
    t.string   "g_name"
    t.integer  "g_w_phone"
    t.string   "gender"
    t.string   "l_name"
    t.string   "medication"
    t.string   "notes"
    t.boolean  "panadol"
    t.string   "role"
    t.string   "school"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cabins", force: true do |t|
    t.string   "name"
    t.integer  "beds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "camps", force: true do |t|
    t.string   "name"
    t.string   "theme"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "speaker"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.integer  "attendee_id"
    t.integer  "camp_id"
    t.integer  "cabin_id"
    t.string   "payment_method"
    t.integer  "charge"
    t.integer  "paid"
    t.string   "pick_up"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incidents", force: true do |t|
    t.integer  "attendee_id"
    t.integer  "camp_id"
    t.string   "incident"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "responses", force: true do |t|
    t.integer  "attendee_id"
    t.integer  "camp_id"
    t.string   "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
