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

ActiveRecord::Schema.define(version: 2018_08_28_101635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "teaching_set_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weekday", default: [], array: true
    t.bigint "report_cycle_id"
    t.index ["report_cycle_id"], name: "index_lessons_on_report_cycle_id"
    t.index ["teaching_set_id"], name: "index_lessons_on_teaching_set_id"
  end

  create_table "marks", force: :cascade do |t|
    t.integer "raw_mark"
    t.text "comment"
    t.bigint "task_id"
    t.bigint "set_pupil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["set_pupil_id"], name: "index_marks_on_set_pupil_id"
    t.index ["task_id"], name: "index_marks_on_task_id"
  end

  create_table "pupils", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "report_cycles", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "teaching_set_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teaching_set_id"], name: "index_report_cycles_on_teaching_set_id"
  end

  create_table "reports", force: :cascade do |t|
    t.text "content"
    t.bigint "report_cycle_id"
    t.bigint "set_pupil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_cycle_id"], name: "index_reports_on_report_cycle_id"
    t.index ["set_pupil_id"], name: "index_reports_on_set_pupil_id"
  end

  create_table "scores", force: :cascade do |t|
    t.text "comment"
    t.bigint "set_pupil_id"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "value", default: 0, null: false
    t.index ["lesson_id"], name: "index_scores_on_lesson_id"
    t.index ["set_pupil_id"], name: "index_scores_on_set_pupil_id"
  end

  create_table "set_pupils", force: :cascade do |t|
    t.bigint "teaching_set_id"
    t.bigint "pupil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pupil_id"], name: "index_set_pupils_on_pupil_id"
    t.index ["teaching_set_id"], name: "index_set_pupils_on_teaching_set_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.integer "max_mark"
    t.bigint "teaching_set_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "report_cycle_id"
    t.index ["report_cycle_id"], name: "index_tasks_on_report_cycle_id"
    t.index ["teaching_set_id"], name: "index_tasks_on_teaching_set_id"
  end

  create_table "teaching_sets", force: :cascade do |t|
    t.string "subject"
    t.string "year_group"
    t.date "end_date"
    t.date "start_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.index ["user_id"], name: "index_teaching_sets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "lessons", "report_cycles"
  add_foreign_key "lessons", "teaching_sets"
  add_foreign_key "marks", "set_pupils"
  add_foreign_key "marks", "tasks"
  add_foreign_key "report_cycles", "teaching_sets"
  add_foreign_key "reports", "report_cycles"
  add_foreign_key "reports", "set_pupils"
  add_foreign_key "scores", "lessons"
  add_foreign_key "scores", "set_pupils"
  add_foreign_key "set_pupils", "pupils"
  add_foreign_key "set_pupils", "teaching_sets"
  add_foreign_key "tasks", "report_cycles"
  add_foreign_key "tasks", "teaching_sets"
  add_foreign_key "teaching_sets", "users"
end
