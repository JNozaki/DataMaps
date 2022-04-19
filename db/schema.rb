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

ActiveRecord::Schema.define(version: 2022_04_17_021033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.integer "in_school"
    t.integer "high_school"
    t.integer "college_university"
    t.integer "never_diploma"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_educations_on_state_id"
  end

  create_table "empoyment_rates", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.integer "total"
    t.integer "male"
    t.integer "female"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_empoyment_rates_on_state_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.integer "household"
    t.integer "male_hourly"
    t.integer "female_hourly"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_incomes_on_state_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "email"
    t.string "full_name"
    t.string "subject"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "newspapers", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.string "name"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_newspapers_on_state_id"
  end

  create_table "populations", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.integer "total"
    t.integer "german"
    t.integer "foreigner"
    t.integer "other_eu"
    t.integer "female"
    t.integer "male"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_populations_on_state_id"
  end

  create_table "poverties", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.integer "total"
    t.integer "male"
    t.integer "female"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_poverties_on_state_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "german_name"
    t.integer "east_west"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "educations", "states"
  add_foreign_key "empoyment_rates", "states"
  add_foreign_key "incomes", "states"
  add_foreign_key "newspapers", "states"
  add_foreign_key "populations", "states"
  add_foreign_key "poverties", "states"
end
