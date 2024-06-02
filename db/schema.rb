# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_02_211954) do
  create_table "brazilian_bars", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "rating"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cocktail_menu_id"
    t.index ["cocktail_menu_id"], name: "index_brazilian_bars_on_cocktail_menu_id"
  end

  create_table "cocktail_menus", force: :cascade do |t|
    t.string "cocktail_name"
    t.decimal "price"
    t.string "ingredients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "quantity"
    t.decimal "price"
    t.integer "cocktail_menu_id", null: false
    t.index ["cocktail_menu_id"], name: "index_ingredients_on_cocktail_menu_id"
  end

  add_foreign_key "brazilian_bars", "cocktail_menus"
  add_foreign_key "ingredients", "cocktail_menus"
end
