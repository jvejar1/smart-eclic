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

ActiveRecord::Schema.define(version: 2018_09_21_145814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "activities", force: :cascade do |t|
    t.integer "chapter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.index ["course_id"], name: "index_activities_on_course_id"
  end

  create_table "bad_selections", force: :cascade do |t|
    t.bigint "question_option_selection_id"
    t.boolean "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_option_selection_id"], name: "index_bad_selections_on_question_option_selection_id"
  end

  create_table "circuit_simulations", force: :cascade do |t|
    t.bigint "user_prelab_id"
    t.bigint "circuit_id"
    t.integer "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["circuit_id"], name: "index_circuit_simulations_on_circuit_id"
    t.index ["user_prelab_id"], name: "index_circuit_simulations_on_user_prelab_id"
  end

  create_table "circuits", force: :cascade do |t|
    t.text "name"
    t.bigint "prelab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prelab_id"], name: "index_circuits_on_prelab_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "semester"
    t.integer "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "number"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_groups_on_course_id"
  end

  create_table "labs", force: :cascade do |t|
    t.date "begin"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "activity_id"
    t.index ["activity_id"], name: "index_labs_on_activity_id"
  end

  create_table "prelab_questions", force: :cascade do |t|
    t.bigint "prelab_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prelab_id"], name: "index_prelab_questions_on_prelab_id"
    t.index ["question_id"], name: "index_prelab_questions_on_question_id"
  end

  create_table "prelabs", force: :cascade do |t|
    t.datetime "begin"
    t.datetime "end"
    t.text "err_explanation"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_prelabs_on_activity_id"
  end

  create_table "question_option_selections", force: :cascade do |t|
    t.bigint "user_prelab_id"
    t.bigint "question_option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_option_id"], name: "index_question_option_selections_on_question_option_id"
    t.index ["user_prelab_id"], name: "index_question_option_selections_on_user_prelab_id"
  end

  create_table "question_options", force: :cascade do |t|
    t.text "option_text"
    t.bigint "question_id"
    t.boolean "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_options_on_question_id"
  end

  create_table "question_text_answers", force: :cascade do |t|
    t.integer "grade"
    t.string "answer_text"
    t.bigint "question_id"
    t.bigint "user_prelab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_text_answers_on_question_id"
    t.index ["user_prelab_id"], name: "index_question_text_answers_on_user_prelab_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "question_type"
    t.text "question_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer "grade"
    t.bigint "course_id"
    t.bigint "user_id"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_user_courses_on_course_id"
    t.index ["user_id"], name: "index_user_courses_on_user_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "user_labs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "lab_id"
    t.integer "class_grade"
    t.integer "report_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lab_id"], name: "index_user_labs_on_lab_id"
    t.index ["user_id"], name: "index_user_labs_on_user_id"
  end

  create_table "user_prelabs", force: :cascade do |t|
    t.integer "grade"
    t.bigint "user_id"
    t.bigint "prelab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prelab_id"], name: "index_user_prelabs_on_prelab_id"
    t.index ["user_id"], name: "index_user_prelabs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "util_links", force: :cascade do |t|
    t.text "link"
    t.integer "link_type"
    t.bigint "prelab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prelab_id"], name: "index_util_links_on_prelab_id"
  end

  add_foreign_key "activities", "courses"
  add_foreign_key "bad_selections", "question_option_selections"
  add_foreign_key "circuit_simulations", "circuits"
  add_foreign_key "circuit_simulations", "user_prelabs"
  add_foreign_key "circuits", "prelabs"
  add_foreign_key "groups", "courses"
  add_foreign_key "labs", "activities"
  add_foreign_key "prelab_questions", "prelabs"
  add_foreign_key "prelab_questions", "questions"
  add_foreign_key "prelabs", "activities"
  add_foreign_key "question_option_selections", "question_options"
  add_foreign_key "question_option_selections", "user_prelabs"
  add_foreign_key "question_options", "questions"
  add_foreign_key "question_text_answers", "questions"
  add_foreign_key "question_text_answers", "user_prelabs"
  add_foreign_key "user_courses", "courses"
  add_foreign_key "user_courses", "users"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "users"
  add_foreign_key "user_labs", "labs"
  add_foreign_key "user_labs", "users"
  add_foreign_key "user_prelabs", "prelabs"
  add_foreign_key "user_prelabs", "users"
  add_foreign_key "util_links", "prelabs"
end
