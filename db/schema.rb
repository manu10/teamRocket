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

ActiveRecord::Schema.define(version: 20141121025920) do

  create_table "add_column_to_users", force: true do |t|
    t.string   "name"
    t.integer  "DNI"
    t.string   "street"
    t.integer  "numStreet"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.date     "datebirth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.text     "mensaje"
    t.text     "respuesta"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producto_id"
  end

  create_table "contacts", force: true do |t|
    t.string   "motivo"
    t.text     "contenido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credit_cards", force: true do |t|
    t.integer  "number"
    t.string   "owner"
    t.date     "expireDate"
    t.integer  "securityCode"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "credit_cards", ["user_id"], name: "index_credit_cards_on_user_id"

  create_table "domiciles", force: true do |t|
    t.integer  "number"
    t.string   "street"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "domiciles", ["user_id"], name: "index_domiciles_on_user_id"

  create_table "oferts", force: true do |t|
    t.text     "motivacion"
    t.integer  "dinero"
    t.integer  "user_id"
    t.integer  "producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "oferts", ["producto_id"], name: "index_oferts_on_producto_id"
  add_index "oferts", ["user_id"], name: "index_oferts_on_user_id"

  create_table "productos", force: true do |t|
    t.string   "titulo"
    t.text     "descripcion", limit: 255
    t.date     "vencimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "UrlImage"
    t.integer  "user_id"
    t.integer  "category_id"
  end

  add_index "productos", ["category_id"], name: "index_productos_on_category_id"
  add_index "productos", ["user_id"], name: "index_productos_on_user_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "DNI"
    t.integer  "phone"
    t.date     "birthDate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
