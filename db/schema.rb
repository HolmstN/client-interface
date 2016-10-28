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

ActiveRecord::Schema.define(version: 20161025204303) do

  create_table "accounts", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "domain"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string  "name"
    t.string  "client_code"
    t.boolean "type_2"
    t.boolean "crownweb"
    t.boolean "replication"
    t.boolean "encryption"
    t.boolean "mobile"
    t.boolean "clinical_dashboard"
    t.boolean "financial_dashboard"
    t.text    "comments"
    t.integer "upgrade_id"
  end

  add_index "clients", ["upgrade_id"], name: "index_clients_on_upgrade_id"

  create_table "connections", force: :cascade do |t|
    t.boolean  "current"
    t.boolean  "vpn"
    t.boolean  "lock_out"
    t.string   "ip_address"
    t.integer  "client_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "instructions"
    t.string   "vpn_address"
    t.string   "server_type"
  end

  add_index "connections", ["ip_address"], name: "index_connections_on_ip_address"

  create_table "upgrades", force: :cascade do |t|
    t.date    "upgrade_date"
    t.integer "client_id"
  end

  add_index "upgrades", ["client_id"], name: "index_upgrades_on_client_id"

  create_table "versions", force: :cascade do |t|
    t.integer "service_pack"
    t.integer "patch_number"
  end

end
