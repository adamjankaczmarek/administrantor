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

ActiveRecord::Schema.define(version: 20140103002409) do

  create_table "altar_boy_duties", force: true do |t|
    t.integer  "altar_boy_id"
    t.integer  "duty_daily_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "altar_boys", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "celebration_dailies", force: true do |t|
    t.string   "name"
    t.float    "hour"
    t.integer  "celebration_type_id"
    t.integer  "celebration_daily_schema_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "celebration_dailies", ["celebration_type_id"], name: "index_celebration_dailies_on_celebration_type_id"

  create_table "celebration_daily_schemas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "celebration_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "celebration_weekly_schemas", force: true do |t|
    t.string   "name"
    t.integer  "sunday_id"
    t.integer  "monday_id"
    t.integer  "tuesday_id"
    t.integer  "wednesday_id"
    t.integer  "thursday_id"
    t.integer  "friday_id"
    t.integer  "saturday_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "celebration_weekly_schemas", ["friday_id"], name: "index_celebration_weekly_schemas_on_friday_id"
  add_index "celebration_weekly_schemas", ["monday_id"], name: "index_celebration_weekly_schemas_on_monday_id"
  add_index "celebration_weekly_schemas", ["saturday_id"], name: "index_celebration_weekly_schemas_on_saturday_id"
  add_index "celebration_weekly_schemas", ["sunday_id"], name: "index_celebration_weekly_schemas_on_sunday_id"
  add_index "celebration_weekly_schemas", ["thursday_id"], name: "index_celebration_weekly_schemas_on_thursday_id"
  add_index "celebration_weekly_schemas", ["tuesday_id"], name: "index_celebration_weekly_schemas_on_tuesday_id"
  add_index "celebration_weekly_schemas", ["wednesday_id"], name: "index_celebration_weekly_schemas_on_wednesday_id"

  create_table "duty_dailies", force: true do |t|
    t.integer  "duty_daily_schema_id"
    t.integer  "service_daily_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "duty_dailies", ["duty_daily_schema_id"], name: "index_duty_dailies_on_duty_daily_schema_id"
  add_index "duty_dailies", ["service_daily_id"], name: "index_duty_dailies_on_service_daily_id"

  create_table "duty_daily_schemas", force: true do |t|
    t.string   "name"
    t.integer  "service_daily_schema_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "duty_daily_schemas", ["service_daily_schema_id"], name: "index_duty_daily_schemas_on_service_daily_schema_id"

  create_table "duty_weekly_schemas", force: true do |t|
    t.integer  "sunday_id"
    t.integer  "monday_id"
    t.integer  "tuesday_id"
    t.integer  "wednesday_id"
    t.integer  "thursday_id"
    t.integer  "friday_id"
    t.integer  "saturday_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_weekly_schema_id"
  end

  add_index "duty_weekly_schemas", ["friday_id"], name: "index_duty_weekly_schemas_on_friday_id"
  add_index "duty_weekly_schemas", ["monday_id"], name: "index_duty_weekly_schemas_on_monday_id"
  add_index "duty_weekly_schemas", ["saturday_id"], name: "index_duty_weekly_schemas_on_saturday_id"
  add_index "duty_weekly_schemas", ["service_weekly_schema_id"], name: "index_duty_weekly_schemas_on_service_weekly_schema_id"
  add_index "duty_weekly_schemas", ["sunday_id"], name: "index_duty_weekly_schemas_on_sunday_id"
  add_index "duty_weekly_schemas", ["thursday_id"], name: "index_duty_weekly_schemas_on_thursday_id"
  add_index "duty_weekly_schemas", ["tuesday_id"], name: "index_duty_weekly_schemas_on_tuesday_id"
  add_index "duty_weekly_schemas", ["wednesday_id"], name: "index_duty_weekly_schemas_on_wednesday_id"

  create_table "presences", force: true do |t|
    t.integer  "altar_boy_id"
    t.integer  "service_daily_id"
    t.integer  "day"
    t.integer  "week_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "presences", ["altar_boy_id"], name: "index_presences_on_altar_boy_id"
  add_index "presences", ["service_daily_id"], name: "index_presences_on_service_daily_id"
  add_index "presences", ["week_id"], name: "index_presences_on_week_id"

  create_table "service_dailies", force: true do |t|
    t.integer  "service_type_id"
    t.integer  "related_id"
    t.integer  "celebration_daily_id"
    t.integer  "service_daily_schema_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_dailies", ["celebration_daily_id"], name: "index_service_dailies_on_celebration_daily_id"
  add_index "service_dailies", ["related_id"], name: "index_service_dailies_on_related_id"
  add_index "service_dailies", ["service_daily_schema_id"], name: "index_service_dailies_on_service_daily_schema_id"

  create_table "service_daily_schemas", force: true do |t|
    t.integer  "celebration_daily_schema_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_daily_schemas", ["celebration_daily_schema_id"], name: "index_service_daily_schemas_on_celebration_daily_schema_id"

  create_table "service_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_types_tarrifs", force: true do |t|
    t.integer  "service_type_id"
    t.integer  "tarrif_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_types_tarrifs", ["service_type_id"], name: "index_service_types_tarrifs_on_service_type_id"
  add_index "service_types_tarrifs", ["tarrif_id"], name: "index_service_types_tarrifs_on_tarrif_id"

  create_table "service_weekly_schemas", force: true do |t|
    t.integer  "sunday_id"
    t.integer  "monday_id"
    t.integer  "tuesday_id"
    t.integer  "wednesday_id"
    t.integer  "thursday_id"
    t.integer  "friday_id"
    t.integer  "saturday_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "service_weekly_schemas", ["friday_id"], name: "index_service_weekly_schemas_on_friday_id"
  add_index "service_weekly_schemas", ["monday_id"], name: "index_service_weekly_schemas_on_monday_id"
  add_index "service_weekly_schemas", ["saturday_id"], name: "index_service_weekly_schemas_on_saturday_id"
  add_index "service_weekly_schemas", ["sunday_id"], name: "index_service_weekly_schemas_on_sunday_id"
  add_index "service_weekly_schemas", ["thursday_id"], name: "index_service_weekly_schemas_on_thursday_id"
  add_index "service_weekly_schemas", ["tuesday_id"], name: "index_service_weekly_schemas_on_tuesday_id"
  add_index "service_weekly_schemas", ["wednesday_id"], name: "index_service_weekly_schemas_on_wednesday_id"

  create_table "tariffs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weekly_plans", force: true do |t|
    t.string   "name"
    t.integer  "celebration_id"
    t.integer  "service_id"
    t.integer  "duty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "weekly_plans", ["celebration_id"], name: "index_weekly_plans_on_celebration_id"
  add_index "weekly_plans", ["duty_id"], name: "index_weekly_plans_on_duty_id"
  add_index "weekly_plans", ["service_id"], name: "index_weekly_plans_on_service_id"

  create_table "weeks", force: true do |t|
    t.integer  "year"
    t.integer  "week_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
