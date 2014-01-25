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

ActiveRecord::Schema.define(version: 20131105114646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_details", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.string   "comment"
    t.integer  "discount_percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["order_id"], name: "index_order_details_on_order_id", using: :btree
  add_index "order_details", ["product_id"], name: "index_order_details_on_product_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "number"
    t.datetime "ordered_at"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "complete_at"
    t.string   "status"
    t.string   "comment",     limit: 2048
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["phone"], name: "index_orders_on_phone", using: :btree

  create_table "products", force: true do |t|
    t.integer  "code"
    t.string   "name"
    t.decimal  "price",      precision: 5, scale: 2
    t.string   "material"
    t.decimal  "weight",     precision: 4, scale: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["name"], name: "index_products_on_name", using: :btree

  add_foreign_key "order_details", "orders", name: "order_details_order_id_fk", dependent: :delete
  add_foreign_key "order_details", "products", name: "order_details_product_id_fk", dependent: :delete

end
