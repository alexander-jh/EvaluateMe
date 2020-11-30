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

ActiveRecord::Schema.define(version: 2020_11_30_222822) do

  create_table "courses", force: :cascade do |t|
    t.integer "course_id"
    t.string "subject"
    t.integer "number"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "user_id", null: false
    t.integer "score"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_evaluations_on_course_id"
    t.index ["project_id"], name: "index_evaluations_on_project_id"
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "group_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course_id", null: false
    t.index ["course_id"], name: "index_groups_on_course_id"
  end

  create_table "incompletes", force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_incompletes_on_project_id"
    t.index ["user_id"], name: "index_incompletes_on_user_id"
  end

  create_table "incourses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_incourses_on_course_id"
    t.index ["user_id"], name: "index_incourses_on_user_id"
  end

  create_table "ingroups", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "group_id"
    t.index ["group_id"], name: "index_ingroups_on_group_id"
    t.index ["user_id"], name: "index_ingroups_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "course_id", null: false
    t.string "pname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_projects_on_course_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Fname"
    t.string "Lname"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "courses", "users"
  add_foreign_key "evaluations", "courses"
  add_foreign_key "evaluations", "projects"
  add_foreign_key "evaluations", "users"
  add_foreign_key "groups", "courses"
  add_foreign_key "incompletes", "projects"
  add_foreign_key "incompletes", "users"
  add_foreign_key "incourses", "courses"
  add_foreign_key "incourses", "users"
  add_foreign_key "ingroups", "users"
  add_foreign_key "projects", "groups", column: "course_id"
end
