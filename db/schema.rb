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

ActiveRecord::Schema.define(version: 2020_11_26_111330) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.boolean "display"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "petprofiles", force: :cascade do |t|
    t.string "name"
    t.integer "category_id", null: false
    t.integer "gender_id", null: false
    t.string "breed"
    t.date "DOB"
    t.boolean "pedigree"
    t.boolean "vaccinated"
    t.boolean "microchipped"
    t.boolean "available"
    t.integer "user_id", null: false
    t.text "about"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_petprofiles_on_category_id"
    t.index ["gender_id"], name: "index_petprofiles_on_gender_id"
    t.index ["user_id"], name: "index_petprofiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "phone"
    t.string "town"
    t.string "county"
    t.text "info"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "petprofiles", "categories"
  add_foreign_key "petprofiles", "genders"
  add_foreign_key "petprofiles", "users"
end
