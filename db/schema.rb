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

ActiveRecord::Schema.define(version: 20160413153348) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "customer_type"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_instances", force: true do |t|
    t.decimal  "quantity"
    t.integer  "stock_id"
    t.integer  "stock_component_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredient_instances", ["stock_component_id"], name: "index_ingredient_instances_on_stock_component_id"
  add_index "ingredient_instances", ["stock_id"], name: "index_ingredient_instances_on_stock_id"

  create_table "ingredients", force: true do |t|
    t.decimal  "quantity"
    t.integer  "stock_type_id"
    t.integer  "stock_type_component_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients", ["stock_type_component_id"], name: "index_ingredients_on_stock_type_component_id"
  add_index "ingredients", ["stock_type_id"], name: "index_ingredients_on_stock_type_id"

  create_table "order_items", force: true do |t|
    t.integer  "quantity"
    t.string   "packaging"
    t.string   "base_stock_type"
    t.integer  "order_id"
    t.integer  "stock_type_id"
    t.string   "unit"
    t.integer  "stock_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"
  add_index "order_items", ["stock_id"], name: "index_order_items_on_stock_id"
  add_index "order_items", ["stock_type_id"], name: "index_order_items_on_stock_type_id"

  create_table "orders", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "fob_date"
    t.string   "fob_time"
    t.boolean  "paid"
    t.string   "shipping_type"
    t.integer  "customer_id"
    t.integer  "shipping_address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"
  add_index "orders", ["shipping_address_id"], name: "index_orders_on_shipping_address_id"

  create_table "shipping_addresses", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.string   "email"
    t.string   "phone"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shipping_addresses", ["customer_id"], name: "index_shipping_addresses_on_customer_id"

  create_table "stock_types", force: true do |t|
    t.string   "name"
    t.string   "unit"
    t.string   "packaging"
    t.boolean  "sellable"
    t.float    "price"
    t.integer  "base_stock_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stock_types", ["base_stock_type_id"], name: "index_stock_types_on_base_stock_type_id"

  create_table "stocks", force: true do |t|
    t.float    "initial_quantity"
    t.date     "purchase_date"
    t.date     "expiration_date"
    t.float    "purchase_price"
    t.string   "batch_number"
    t.integer  "supplier_id"
    t.integer  "stock_type_id"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stocks", ["stock_type_id"], name: "index_stocks_on_stock_type_id"
  add_index "stocks", ["supplier_id"], name: "index_stocks_on_supplier_id"

  create_table "suppliers", force: true do |t|
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "name"
    t.decimal  "quantity"
    t.integer  "base_unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "units", ["base_unit_id"], name: "index_units_on_base_unit_id"

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
