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
    t.integer "user_id"
    t.text "description"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.integer "map_id"
    t.index ["map_id"], name: "index_games_on_map_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "maps", force: :cascade do |t|
    t.text "name"
    t.text "picture_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.text "description"
    t.index ["user_id"], name: "index_maps_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.integer "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "x_coord"
    t.integer "y_coord"
    t.index ["character_id"], name: "index_players_on_character_id"
    t.index ["game_id"], name: "index_players_on_game_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "password_digest"
  end

end
