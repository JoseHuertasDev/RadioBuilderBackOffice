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

ActiveRecord::Schema[7.1].define(version: 2023_12_10_193151) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "programings", force: :cascade do |t|
    t.string "day"
    t.bigint "schedule_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_programings_on_schedule_id"
  end

  create_table "radios", force: :cascade do |t|
    t.string "title"
    t.string "url_stream"
    t.string "logo"
    t.string "font_type"
    t.string "font_color"
    t.string "player_bg_color"
    t.string "menu_bg_color"
    t.string "icon_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_radios_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "radio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["radio_id"], name: "index_schedules_on_radio_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string "social_type"
    t.string "url_socials"
    t.bigint "radio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["radio_id"], name: "index_socials_on_radio_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "programings", "schedules"
  add_foreign_key "radios", "users"
  add_foreign_key "schedules", "radios"
  add_foreign_key "socials", "radios"
end
