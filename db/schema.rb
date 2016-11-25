# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161124164208) do

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "type"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "brands", ["email"], name: "index_brands_on_email", unique: true
  add_index "brands", ["reset_password_token"], name: "index_brands_on_reset_password_token", unique: true

  create_table "certifications", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "certificate_name"
    t.string   "certificate_authority"
    t.string   "license_no"
    t.string   "certification_url"
    t.date     "certification_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "certifications", ["student_id"], name: "index_certifications_on_student_id"

  create_table "courses", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "course_name"
    t.string   "course_code"
    t.string   "associated_with"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "courses", ["student_id"], name: "index_courses_on_student_id"

  create_table "dashboards", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "job_id"
    t.date     "date"
    t.string   "profile"
    t.string   "application_status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "dashboards", ["job_id"], name: "index_dashboards_on_job_id"
  add_index "dashboards", ["student_id"], name: "index_dashboards_on_student_id"

  create_table "educations", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "school"
    t.date     "from"
    t.date     "to"
    t.string   "degree"
    t.string   "field_of_study"
    t.string   "grade"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "educations", ["student_id"], name: "index_educations_on_student_id"

  create_table "experiences", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "company_name"
    t.string   "title"
    t.string   "location"
    t.date     "from"
    t.date     "to"
    t.boolean  "currently_working_here"
    t.string   "description"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "experiences", ["student_id"], name: "index_experiences_on_student_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "profile"
    t.integer  "duration"
    t.integer  "stipend"
    t.datetime "start_date"
    t.string   "type"
    t.datetime "apply_by"
    t.integer  "student_id"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "jobs", ["brand_id"], name: "index_jobs_on_brand_id"
  add_index "jobs", ["student_id"], name: "index_jobs_on_student_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["job_id"], name: "index_orders_on_job_id"
  add_index "orders", ["student_id"], name: "index_orders_on_student_id"

  create_table "projects", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "title"
    t.string   "occupation"
    t.date     "from"
    t.date     "to"
    t.string   "project_url"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "projects", ["student_id"], name: "index_projects_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact"
    t.string   "skills"
    t.string   "gender"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "summary"
    t.date     "dob"
    t.string   "marital_status"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
