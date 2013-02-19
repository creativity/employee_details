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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130219063218) do

  create_table "additional_infos", :force => true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "addresses", :force => true do |t|
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "address1"
    t.string   "address2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "appraisals", :force => true do |t|
    t.integer  "user_id"
    t.date     "date_of_joining"
    t.string   "total_period_worked"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "app_status"
  end

  create_table "attendances", :force => true do |t|
    t.integer  "user_id"
    t.datetime "day"
    t.time     "login_time"
    t.integer  "weekly_hours"
    t.time     "logout_time"
    t.integer  "monthly_hours"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "certificate_informations", :force => true do |t|
    t.string   "course"
    t.string   "institute"
    t.string   "duration"
    t.string   "grade"
    t.date     "year"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "education_details", :force => true do |t|
    t.string   "degree"
    t.string   "institute"
    t.string   "university"
    t.float    "percenrtage"
    t.date     "year_of_passing"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "all_day",     :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.text     "description"
  end

  create_table "family_details", :force => true do |t|
    t.string   "name"
    t.string   "relationship"
    t.string   "occupation"
    t.string   "contact_info"
    t.string   "age"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "leave_requests", :force => true do |t|
    t.integer  "user_id"
    t.date     "leave_date"
    t.integer  "leave_type_id"
    t.text     "remark"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "leave_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leaves", :force => true do |t|
    t.string   "leave_name"
    t.string   "LeaveType"
    t.integer  "NoOfLeaves"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "login_details", :force => true do |t|
    t.integer  "user_id"
    t.datetime "punch_in"
    t.datetime "punch_out"
    t.boolean  "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.datetime "final_punch_in"
    t.datetime "break_in"
    t.datetime "break_out"
    t.datetime "final_punchin"
    t.string   "loghrs"
    t.string   "month"
    t.string   "timelog"
  end

  create_table "messages", :force => true do |t|
    t.string   "message"
    t.string   "subject"
    t.integer  "message_from"
    t.integer  "message_to"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "months", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "personal_infos", :force => true do |t|
    t.string   "preffer_name"
    t.text     "present_address"
    t.text     "permanant_address"
    t.string   "mobile_no"
    t.string   "residance_no"
    t.date     "date_of_birth"
    t.string   "place_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "passport_no"
    t.string   "place_of_issue"
    t.string   "date_of_issue"
    t.date     "valid_till"
    t.string   "hobbies"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "user_id"
  end

  create_table "previous_work_exps", :force => true do |t|
    t.string   "organisation"
    t.string   "duration"
    t.string   "department"
    t.string   "designation"
    t.text     "reason_to_leave"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "professioanl_achivments", :force => true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "proffesional_refs", :force => true do |t|
    t.string   "name"
    t.string   "contact_no"
    t.string   "organisation"
    t.string   "department"
    t.string   "designation"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.string   "project_expected_duration"
    t.string   "client_name"
    t.string   "technology_used"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "role_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "salaries", :force => true do |t|
    t.integer  "user_id",                        :null => false
    t.integer  "target_year",                    :null => false
    t.integer  "target_month",                   :null => false
    t.boolean  "target_day_1"
    t.boolean  "target_day_2"
    t.boolean  "target_day_3"
    t.boolean  "target_day_4"
    t.boolean  "target_day_5"
    t.boolean  "target_day_6"
    t.boolean  "target_day_7"
    t.boolean  "target_day_8"
    t.boolean  "target_day_9"
    t.boolean  "target_day_10"
    t.boolean  "target_day_11"
    t.boolean  "target_day_12"
    t.boolean  "target_day_13"
    t.boolean  "target_day_14"
    t.boolean  "target_day_15"
    t.boolean  "target_day_16"
    t.boolean  "target_day_17"
    t.boolean  "target_day_18"
    t.boolean  "target_day_19"
    t.boolean  "target_day_20"
    t.boolean  "target_day_21"
    t.boolean  "target_day_22"
    t.boolean  "target_day_23"
    t.boolean  "target_day_24"
    t.boolean  "target_day_25"
    t.boolean  "target_day_26"
    t.boolean  "target_day_27"
    t.boolean  "target_day_28"
    t.boolean  "target_day_29"
    t.boolean  "target_day_30"
    t.boolean  "target_day_31"
    t.integer  "dayrate",         :default => 0, :null => false
    t.integer  "working_days",    :default => 0, :null => false
    t.integer  "basic_salary",    :default => 0, :null => false
    t.integer  "travel_expense",  :default => 0, :null => false
    t.integer  "others",          :default => 0, :null => false
    t.integer  "total_payable",   :default => 0, :null => false
    t.integer  "cash_advance",    :default => 0, :null => false
    t.integer  "other_deduction", :default => 0, :null => false
    t.integer  "net_payable",     :default => 0, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "salaries", ["user_id"], :name => "index_salaries_on_user_id"

  create_table "salary_details", :force => true do |t|
    t.integer  "user_id"
    t.float    "salary_amount"
    t.float    "salary_deducted"
    t.float    "total_salary"
    t.float    "difference_to_pay"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "user_id"
    t.string   "task_name"
    t.string   "task_description"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "team_users", :force => true do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "team_name"
    t.string   "team_leader"
    t.integer  "number_of_persons"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "user_teams", :force => true do |t|
    t.string   "team_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
    t.string   "status"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.integer  "role_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
