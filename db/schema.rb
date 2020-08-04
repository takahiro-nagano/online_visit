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

ActiveRecord::Schema.define(version: 2020_08_03_215712) do

  create_table "information", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "news"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.date "calendar_day"
    t.date "reservation_time"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "resident_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "resident_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resident_id"], name: "index_resident_users_on_resident_id"
    t.index ["user_id"], name: "index_resident_users_on_user_id"
  end

  create_table "residents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name", null: false
    t.integer "floor", null: false
    t.string "charge_worker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.string "password_digest", null: false
    t.string "room_name"
    t.string "admin", default: "0"
    t.string "boolean", default: "0"
    t.string "floor_authority", default: "0"
    t.string "resident_name1"
    t.string "resident_name2"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reservations", "users"
  add_foreign_key "resident_users", "residents"
  add_foreign_key "resident_users", "users"
end
