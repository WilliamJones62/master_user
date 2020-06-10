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

ActiveRecord::Schema.define(version: 20200330143004) do

  create_table "employees", force: :cascade do |t|
    t.string "Employee_Status"
    t.string "Badge_"
    t.string "ssn4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "global_users", force: :cascade do |t|
    t.string "manager"
    t.string "manager_id"
    t.string "user_dept"
    t.boolean "dept_manager"
    t.boolean "dispatch"
    t.boolean "holiday_bird_caps"
    t.boolean "master_user"
    t.boolean "order_input"
    t.boolean "pricing"
    t.boolean "prospects"
    t.boolean "rapid_order"
    t.boolean "refusals"
    t.boolean "short_term_trucks"
    t.boolean "take_in"
    t.boolean "temp_hire"
    t.boolean "truck_monitoring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.boolean "hardware"
    t.string "password"
    t.string "campaign_rep1"
    t.string "campaign_rep2"
    t.boolean "campaigns"
    t.boolean "campaigns_admin"
    t.boolean "cod"
    t.string "cod_role"
    t.string "campaign_role"
    t.boolean "focus_items"
    t.string "focus_items_role"
    t.string "focus_items_manager"
    t.string "focus_items_rep1"
    t.string "focus_items_rep2"
    t.string "campaign_manager"
    t.boolean "retail_order_input"
    t.boolean "retail_rapid_order"
    t.string "retail_order_input_rep1"
    t.string "retail_order_input_rep2"
    t.string "retail_rapid_order_role"
    t.boolean "complaints"
    t.string "complaints_role"
    t.string "complaints_dc"
  end

  create_table "user_loads", force: :cascade do |t|
    t.string "badge"
    t.string "ssn4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "manager"
    t.string "manager_id"
    t.string "user_dept"
    t.boolean "dept_manager"
    t.boolean "order_input"
    t.boolean "prospects"
    t.boolean "refusals"
    t.boolean "short_term_trucks"
    t.boolean "temp_hire"
    t.boolean "truck_monitoring"
    t.boolean "take_in"
    t.boolean "cod"
    t.string "cod_role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
