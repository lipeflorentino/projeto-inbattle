<<<<<<< HEAD
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

ActiveRecord::Schema.define(version: 20160625165753) do

  create_table "candidatos", force: :cascade do |t|
    t.text     "endereco"
    t.integer  "pontos"
    t.integer  "tema_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "candidatos", ["tema_id"], name: "index_candidatos_on_tema_id"

  create_table "microposts", force: :cascade do |t|
    t.text     "tema"
    t.text     "endereco"
    t.integer  "user_id"
    t.integer  "pontos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "temas", force: :cascade do |t|
    t.text     "tema"
    t.integer  "pontos"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "temas", ["user_id", "created_at"], name: "index_temas_on_user_id_and_created_at"
  add_index "temas", ["user_id"], name: "index_temas_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
=======
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

ActiveRecord::Schema.define(version: 20160624080321) do

  create_table "microposts", force: :cascade do |t|
    t.text     "tema"
    t.text     "endereco"
    t.integer  "user_id"
    t.integer  "pontos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
>>>>>>> 5f8446c7e1ab101820515277f8d71315a2d22601
