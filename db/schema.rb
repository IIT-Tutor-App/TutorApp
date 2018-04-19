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

ActiveRecord::Schema.define(version: 20180419004643) do

  create_table "sessions", force: :cascade do |t|
    t.integer "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date_time"
    t.index ["tutor_id"], name: "index_sessions_on_tutor_id"
  end

  create_table "sessions_students", id: false, force: :cascade do |t|
    t.integer "session_id", null: false
    t.integer "student_id", null: false
    t.index ["session_id", "student_id"], name: "index_sessions_students_on_session_id_and_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "bio"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.index ["student_id"], name: "index_tutors_on_student_id"
  end

end
