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

<<<<<<< HEAD
ActiveRecord::Schema[7.2].define(version: 2024_07_09_070019) do
=======
ActiveRecord::Schema[7.2].define(version: 2024_07_23_051007) do
>>>>>>> 6edfa23 (Added Key)
  create_table "addresses", force: :cascade do |t|
    t.string "text", default: "Address"
    t.string "placeholder", default: "Enter your address here"
    t.string "text_transform", default: "none"
    t.string "default_value"
    t.integer "font_size", default: 16
    t.string "font_weight", default: "Normal"
    t.string "font_style", default: "Normal"
    t.string "color", default: "#000000"
    t.string "position", default: "Left"
    t.string "required", default: "False"
    t.string "disable", default: "False"
    t.string "resize", default: "False"
    t.integer "form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_addresses_on_form_id"
  end

  create_table "buttons", force: :cascade do |t|
    t.string "text", default: "Button"
    t.string "text_transform", default: "none"
    t.integer "font_size", default: 16
    t.string "font_weight", default: "Normal"
    t.string "font_style", default: "Normal"
    t.string "color", default: "#FFFFFF"
    t.string "background_color", default: "#0000FF"
    t.string "position", default: "Left"
    t.string "button_type", default: "Button"
    t.integer "form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_buttons_on_form_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "text", default: "Email"
    t.string "placeholder", default: "Type here"
    t.string "text_transform", default: "none"
    t.string "defalt_value"
    t.integer "font_size", default: 16
    t.string "font_weight", default: "Normal"
    t.string "font_style", default: "Normal"
    t.string "color", default: "#000000"
    t.string "position", default: "Left"
    t.string "required", default: "False"
    t.string "disable", default: "False"
    t.integer "form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_emails_on_form_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "title", default: "Form Builder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "key"
    t.index ["key"], name: "index_forms_on_key", unique: true
  end

  create_table "headers", force: :cascade do |t|
    t.string "text", default: "Header"
    t.string "text_transform", default: "none"
    t.integer "font_size", default: 48
    t.string "font_weight", default: "Normal"
    t.string "font_style", default: "Normal"
    t.string "color", default: "#000000"
    t.string "position", default: "Left"
    t.integer "form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_headers_on_form_id"
  end

  create_table "inputtexts", force: :cascade do |t|
    t.string "text", default: "Input Text"
    t.string "placeholder", default: "Type here"
    t.string "text_transform", default: "none"
    t.string "defalt_value"
    t.integer "font_size", default: 16
    t.string "font_weight", default: "Normal"
    t.string "font_style", default: "Normal"
    t.string "color", default: "#000000"
    t.string "position", default: "Left"
    t.string "required", default: "False"
    t.string "disable", default: "False"
    t.integer "form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_inputtexts_on_form_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "text", default: "Phone"
    t.string "placeholder", default: "Type here"
    t.string "text_transform", default: "none"
    t.string "defalt_value"
    t.integer "font_size", default: 16
    t.string "font_weight", default: "Normal"
    t.string "font_style", default: "Normal"
    t.string "color", default: "#000000"
    t.string "position", default: "Left"
    t.string "required", default: "False"
    t.string "disable", default: "False"
    t.integer "form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_phones_on_form_id"
  end

  add_foreign_key "addresses", "forms"
  add_foreign_key "buttons", "forms"
  add_foreign_key "emails", "forms"
  add_foreign_key "headers", "forms"
  add_foreign_key "inputtexts", "forms"
  add_foreign_key "phones", "forms"
end
