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

ActiveRecord::Schema[7.0].define(version: 2023_08_08_132910) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.text "notes"
    t.string "purpose"
    t.string "title"
    t.bigint "user_id", null: false
    t.bigint "hospital_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_appointments_on_hospital_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "attendants", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendants_on_event_id"
    t.index ["user_id"], name: "index_attendants_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.date "date"
    t.time "time"
    t.string "location"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "price_range"
    t.text "services"
    t.text "description"
    t.float "average_rating"
    t.string "phone_number"
    t.string "webpage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "default_image"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.string "title"
    t.string "category"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_replies_on_post_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.date "due_date"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "hospitals"
  add_foreign_key "appointments", "users"
  add_foreign_key "attendants", "events"
  add_foreign_key "attendants", "users"
  add_foreign_key "events", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "replies", "posts"
  add_foreign_key "replies", "users"
end
