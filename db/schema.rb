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

ActiveRecord::Schema.define(version: 20171028025036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_statuses", force: :cascade do |t|
    t.string "status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.string "account_number"
    t.string "first_name"
    t.string "last_name"
    t.string "ssn"
    t.bigint "account_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_status_id"], name: "index_accounts_on_account_status_id"
  end

  create_table "category_codes", force: :cascade do |t|
    t.string "code_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_departments_on_location_id"
  end

  create_table "employee_departments", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employee_departments_on_department_id"
    t.index ["employee_id"], name: "index_employee_departments_on_employee_id"
  end

  create_table "employee_statuses", force: :cascade do |t|
    t.string "status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_types", force: :cascade do |t|
    t.string "type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.date "added_date"
    t.string "added_by"
    t.date "modified_date"
    t.string "modified_by"
    t.bigint "employee_status_id"
    t.bigint "location_id"
    t.bigint "employee_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_status_id"], name: "index_employees_on_employee_status_id"
    t.index ["employee_type_id"], name: "index_employees_on_employee_type_id"
    t.index ["location_id"], name: "index_employees_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "description"
    t.string "address"
    t.string "city"
    t.string "zip_code"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_locations_on_state_id"
  end

  create_table "matter_categories", force: :cascade do |t|
    t.string "category_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matter_category_codes", force: :cascade do |t|
    t.bigint "category_code_id"
    t.bigint "matter_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_code_id"], name: "index_matter_category_codes_on_category_code_id"
    t.index ["matter_category_id"], name: "index_matter_category_codes_on_matter_category_id"
  end

  create_table "matter_sources", force: :cascade do |t|
    t.string "source_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matter_statuses", force: :cascade do |t|
    t.string "status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matter_types", force: :cascade do |t|
    t.string "type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matter_updates", force: :cascade do |t|
    t.bigint "update_id"
    t.bigint "matter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matter_id"], name: "index_matter_updates_on_matter_id"
    t.index ["update_id"], name: "index_matter_updates_on_update_id"
  end

  create_table "matters", force: :cascade do |t|
    t.date "reported_date"
    t.date "end_date"
    t.date "added_date"
    t.string "added_by"
    t.date "modified_date"
    t.string "modified_by"
    t.string "comment"
    t.bigint "matter_type_id"
    t.bigint "matter_status_id"
    t.bigint "matter_source_id"
    t.bigint "matter_category_id"
    t.bigint "resolution_code_id"
    t.bigint "urgency_level_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_matters_on_department_id"
    t.index ["matter_category_id"], name: "index_matters_on_matter_category_id"
    t.index ["matter_source_id"], name: "index_matters_on_matter_source_id"
    t.index ["matter_status_id"], name: "index_matters_on_matter_status_id"
    t.index ["matter_type_id"], name: "index_matters_on_matter_type_id"
    t.index ["resolution_code_id"], name: "index_matters_on_resolution_code_id"
    t.index ["urgency_level_id"], name: "index_matters_on_urgency_level_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.bigint "state_id"
    t.string "zip_code"
    t.string "phone_number"
    t.string "email"
    t.string "last_four_ssn"
    t.date "added_date"
    t.string "added_by"
    t.date "modified_date"
    t.string "modified_by"
    t.bigint "party_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_type_id"], name: "index_parties_on_party_type_id"
    t.index ["state_id"], name: "index_parties_on_state_id"
  end

  create_table "party_accounts", force: :cascade do |t|
    t.bigint "party_id"
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_party_accounts_on_account_id"
    t.index ["party_id"], name: "index_party_accounts_on_party_id"
  end

  create_table "party_matters", force: :cascade do |t|
    t.bigint "matter_id"
    t.bigint "party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matter_id"], name: "index_party_matters_on_matter_id"
    t.index ["party_id"], name: "index_party_matters_on_party_id"
  end

  create_table "party_types", force: :cascade do |t|
    t.string "type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resolution_codes", force: :cascade do |t|
    t.string "resolution_code_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "updates", force: :cascade do |t|
    t.string "update_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urgency_levels", force: :cascade do |t|
    t.string "level_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_employees", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_user_employees_on_employee_id"
  end

  add_foreign_key "accounts", "account_statuses"
  add_foreign_key "departments", "locations"
  add_foreign_key "employee_departments", "departments"
  add_foreign_key "employee_departments", "employees"
  add_foreign_key "employees", "employee_statuses"
  add_foreign_key "employees", "employee_types"
  add_foreign_key "employees", "locations"
  add_foreign_key "locations", "states"
  add_foreign_key "matter_category_codes", "category_codes"
  add_foreign_key "matter_category_codes", "matter_categories"
  add_foreign_key "matter_updates", "matters"
  add_foreign_key "matter_updates", "updates"
  add_foreign_key "matters", "departments"
  add_foreign_key "matters", "matter_categories"
  add_foreign_key "matters", "matter_sources"
  add_foreign_key "matters", "matter_statuses"
  add_foreign_key "matters", "matter_types"
  add_foreign_key "matters", "resolution_codes"
  add_foreign_key "matters", "urgency_levels"
  add_foreign_key "parties", "party_types"
  add_foreign_key "parties", "states"
  add_foreign_key "party_accounts", "accounts"
  add_foreign_key "party_accounts", "parties"
  add_foreign_key "party_matters", "matters"
  add_foreign_key "party_matters", "parties"
  add_foreign_key "user_employees", "employees"
end
