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

ActiveRecord::Schema.define(version: 0) do

  create_table "characters", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "specie"
    t.integer "level"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.text "character_class"
    t.text "picture_url"
  end

  create_table "directors", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maps", force: :cascade do |t|
    t.text "name"
    t.text "picture_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: :cascade do |t|
    t.text "imdb_key"
    t.integer "runtime"
    t.integer "year"
    t.text "mpaa"
    t.text "title"
    t.text "poster_url"
    t.text "plot"
    t.integer "director_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["director_id"], name: "index_movies_on_director_id"
  end

  create_table "stores", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supplies", force: :cascade do |t|
    t.text "name"
    t.integer "price"
    t.text "type"
    t.text "description"
    t.text "rarity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
