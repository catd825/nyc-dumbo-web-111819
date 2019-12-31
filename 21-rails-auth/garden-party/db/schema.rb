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

ActiveRecord::Schema.define(version: 2019_12_31_193505) do

  create_table "gardeners", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.integer "length"
    t.integer "width"
    t.string "location"
    t.integer "staff_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "gardener_id"
    t.index ["gardener_id"], name: "index_gardens_on_gardener_id"
  end

  create_table "plants", force: :cascade do |t|
    t.integer "garden_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "color"
    t.integer "x"
    t.integer "y"
    t.integer "width"
    t.integer "length"
    t.string "emoji"
    t.index ["garden_id"], name: "index_plants_on_garden_id"
  end

  add_foreign_key "gardens", "gardeners"
  add_foreign_key "plants", "gardens"
end
