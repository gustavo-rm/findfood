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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_05_04_001527) do
=======
ActiveRecord::Schema.define(version: 2019_04_03_223756) do
>>>>>>> 27eb930ff04d8e85525b40e38638b161ab207de3

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "categories", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string "description"
    t.float "price"
    t.float "preparationtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id"
    t.integer "category_id"
  end

  create_table "dishes_ingredients", id: false, force: :cascade do |t|
    t.bigint "dish_id", null: false
    t.bigint "ingredient_id", null: false
  end

  create_table "ingredients", force: :cascade do |t|
=======
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
>>>>>>> 27eb930ff04d8e85525b40e38638b161ab207de3
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
  create_table "posts", force: :cascade do |t|
    t.text "text"
    t.string "subject"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.integer "author_id"
>>>>>>> 27eb930ff04d8e85525b40e38638b161ab207de3
  end

end
