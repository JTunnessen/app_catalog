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

ActiveRecord::Schema.define(version: 20160430193547) do

  create_table "apps", force: :cascade do |t|
    t.string   "title"
    t.string   "acronym"
    t.text     "description"
    t.string   "prod_mgr"
    t.string   "prod_owner"
    t.string   "lead_dev"
    t.date     "deploy_date"
    t.string   "link_to_app"
    t.string   "link_to_repo"
    t.string   "link_to_backlog"
    t.string   "user_1"
    t.string   "user_count_1"
    t.string   "user_2"
    t.string   "user_count_2"
    t.string   "user_3"
    t.string   "user_count_3"
    t.string   "user_4"
    t.string   "user_count_4"
    t.string   "user_5"
    t.string   "user_count_5"
    t.string   "user_6"
    t.string   "user_count_6"
    t.string   "user_7"
    t.string   "user_count_7"
    t.string   "user_8"
    t.string   "user_count_8"
    t.boolean  "responsive"
    t.string   "version"
    t.string   "prog_lang_1"
    t.string   "prog_lang_version"
    t.date     "prog_lang_eol_1"
    t.string   "framework_1"
    t.string   "framework_version"
    t.date     "framework_eol_1"
    t.string   "database"
    t.string   "database_version"
    t.date     "database_eol"
    t.string   "web_server"
    t.string   "web_server_version"
    t.date     "web_server_eol"
    t.string   "app_server"
    t.string   "app_server_version"
    t.date     "app_server_eol"
    t.string   "tech_stack_1"
    t.date     "tech_stack_eol_1"
    t.string   "tech_stack_2"
    t.date     "tech_stack_eol_2"
    t.string   "tech_stack_3"
    t.date     "tech_stack_eol_3"
    t.string   "sys_dep_1"
    t.string   "sys_dep_2"
    t.string   "sys_dep_3"
    t.string   "sys_dep_4"
    t.string   "sys_dep_5"
    t.string   "sys_dep_6"
    t.integer  "app_priority"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
