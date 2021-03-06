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

ActiveRecord::Schema.define(version: 20170123033058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistances", force: :cascade do |t|
    t.integer  "worker_id"
    t.boolean  "asistio"
    t.boolean  "excepcion"
    t.date     "fecha"
    t.integer  "horas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assistances", ["worker_id"], name: "index_assistances_on_worker_id", using: :btree

  create_table "bosses", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "rut"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "fono"
    t.string   "email"
    t.text     "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "rut"
  end

  create_table "equips", force: :cascade do |t|
    t.string   "nombre"
    t.string   "especialidad"
    t.integer  "boss_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "equips", ["boss_id"], name: "index_equips_on_boss_id", using: :btree

  create_table "reports", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "bonos"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "worker_id"
    t.integer  "diasTotales"
    t.float    "porcentaje"
    t.integer  "diasFaltados"
    t.integer  "excepciones"
    t.integer  "horasExtras"
    t.string   "resumen"
    t.integer  "descuentos"
  end

  add_index "reports", ["worker_id"], name: "index_reports_on_worker_id", using: :btree

  create_table "reports_workers", force: :cascade do |t|
  end

  create_table "summaries", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "resumen"
    t.integer  "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "summaries_workers", id: false, force: :cascade do |t|
    t.integer "summary_id"
    t.integer "worker_id"
  end

  add_index "summaries_workers", ["summary_id"], name: "index_summaries_workers_on_summary_id", using: :btree
  add_index "summaries_workers", ["worker_id"], name: "index_summaries_workers_on_worker_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "boss_id"
  end

  add_index "users", ["boss_id"], name: "index_users_on_boss_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "workers", force: :cascade do |t|
    t.string   "nombre"
    t.text     "direccion"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "equip_id"
    t.string   "rut"
  end

  add_index "workers", ["equip_id"], name: "index_workers_on_equip_id", using: :btree

  add_foreign_key "assistances", "workers"
  add_foreign_key "equips", "bosses"
  add_foreign_key "reports", "workers"
  add_foreign_key "users", "bosses"
  add_foreign_key "workers", "equips"
end
