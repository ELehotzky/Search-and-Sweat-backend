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

ActiveRecord::Schema.define(version: 2018_10_11_145709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_details", force: :cascade do |t|
    t.string "instructor"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fitness_class_categories", force: :cascade do |t|
    t.bigint "fitness_class_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_fitness_class_categories_on_category_id"
    t.index ["fitness_class_id"], name: "index_fitness_class_categories_on_fitness_class_id"
  end

  create_table "fitness_class_details", force: :cascade do |t|
    t.bigint "fitness_class_id"
    t.bigint "class_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_detail_id"], name: "index_fitness_class_details_on_class_detail_id"
    t.index ["fitness_class_id"], name: "index_fitness_class_details_on_fitness_class_id"
  end

  create_table "fitness_classes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.integer "class_length"
    t.integer "price"
    t.bigint "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_fitness_classes_on_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.integer "zip_code"
    t.string "phone"
    t.string "image"
    t.string "website"
    t.string "hours"
    t.string "promos"
    t.bigint "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_studios_on_admin_id"
  end

  add_foreign_key "fitness_class_categories", "categories"
  add_foreign_key "fitness_class_categories", "fitness_classes"
  add_foreign_key "fitness_class_details", "class_details"
  add_foreign_key "fitness_class_details", "fitness_classes"
  add_foreign_key "fitness_classes", "studios"
  add_foreign_key "studios", "admins"
end
