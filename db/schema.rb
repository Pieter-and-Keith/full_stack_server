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

ActiveRecord::Schema.define(version: 2022_01_30_030045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "date"
    t.text "comment"
    t.boolean "finished"
    t.boolean "paid"
    t.bigint "user_id", null: false
    t.bigint "options_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["options_id"], name: "index_bookings_on_options_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "details", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street_name"
    t.string "suburb"
    t.integer "postcode"
    t.string "state"
    t.string "rego"
    t.string "make"
    t.string "model"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "street_number"
    t.string "phone_number"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_details_on_user_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "service_type"
    t.text "description"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "options", column: "options_id"
  add_foreign_key "bookings", "users"
  add_foreign_key "details", "users"
end
