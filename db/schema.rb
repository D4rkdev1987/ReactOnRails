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

ActiveRecord::Schema.define(version: 20180716152401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starts", force: :cascade do |t|
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.index ["course_id"], name: "index_starts_on_course_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.string "phone"
    t.string "address_one"
    t.string "address_two"
    t.string "email"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.date "dob"
    t.string "military_status"
    t.string "education"
    t.string "experience"
    t.string "employment_status"
    t.string "salary"
    t.string "gender"
    t.string "format_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.bigint "start_id"
    t.index ["course_id"], name: "index_students_on_course_id"
    t.index ["start_id"], name: "index_students_on_start_id"
  end

  add_foreign_key "starts", "courses"
  add_foreign_key "students", "courses"
  add_foreign_key "students", "starts"
end
