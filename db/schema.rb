# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_11_203932) do

  create_table "rooms", force: :cascade do |t|
    t.string "home_type"
    t.string "room_type"
    t.integer "accommodate"
    t.integer "bed_room"
    t.integer "bath_room"
    t.string "listing_name"
    t.text "summary"
    t.string "address"
    t.boolean "is_tv"
    t.boolean "is_kitchen"
    t.boolean "is_dishwasher"
    t.boolean "is_air_conditioning"
    t.boolean "is_heating"
    t.boolean "is_internet"
    t.boolean "is_washing_machine"
    t.boolean "is_dryer"
    t.boolean "is_toiletries_provided"
    t.boolean "is_parking"
    t.boolean "is_doorman"
    t.boolean "is_elevator"
    t.integer "price"
    t.boolean "active"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fullname"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "provider"
    t.string "uid"
    t.string "image"
    t.string "phone_number"
    t.text "description"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "rooms", "users"
end
