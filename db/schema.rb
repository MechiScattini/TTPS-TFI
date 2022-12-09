# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_09_152319) do
  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.string "motive"
    t.boolean "solved"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "branch_id", null: false
    t.integer "schedule_id", null: false
    t.index ["branch_id"], name: "index_appointments_on_branch_id"
    t.index ["schedule_id"], name: "index_appointments_on_schedule_id"
  end

  create_table "appointments_users", id: false, force: :cascade do |t|
    t.integer "appointment_id", null: false
    t.integer "user_id", null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches_schedules", id: false, force: :cascade do |t|
    t.integer "branch_id", null: false
    t.integer "schedule_id", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "day"
    t.time "time_from"
    t.time "time_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.integer "branch_id"
    t.index ["branch_id"], name: "index_users_on_branch_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "branches"
  add_foreign_key "appointments", "schedules"
  add_foreign_key "users", "branches"
end
