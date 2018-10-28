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

ActiveRecord::Schema.define(version: 2018_10_27_222836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_segments", force: :cascade do |t|
    t.string "name"
    t.string "min_revenue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "layout_presets", force: :cascade do |t|
    t.bigint "business_segment_id"
    t.bigint "layout_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_segment_id"], name: "index_layout_presets_on_business_segment_id"
    t.index ["layout_id"], name: "index_layout_presets_on_layout_id"
    t.index ["role_id"], name: "index_layout_presets_on_role_id"
  end

  create_table "layouts", force: :cascade do |t|
    t.json "structure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uimodule_stats", force: :cascade do |t|
    t.integer "segment_actuality"
    t.integer "role_actuality"
    t.bigint "uimodule_id"
    t.bigint "business_segment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_segment_id"], name: "index_uimodule_stats_on_business_segment_id"
    t.index ["uimodule_id"], name: "index_uimodule_stats_on_uimodule_id"
  end

  create_table "uimodules", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "look"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name"
    t.bigint "business_segment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_segment_id"], name: "index_user_roles_on_business_segment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.bigint "role_id"
    t.bigint "layout_id"
    t.bigint "business_segment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_segment_id"], name: "index_users_on_business_segment_id"
    t.index ["layout_id"], name: "index_users_on_layout_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
