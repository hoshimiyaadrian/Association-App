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

ActiveRecord::Schema.define(version: 2022_01_04_102544) do

  create_table "friends", force: :cascade do |t|
    t.string "friend_name"
    t.string "friend_activity_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friends_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "friend_id", null: false
    t.index ["friend_id", "user_id"], name: "index_friends_users_on_friend_id_and_user_id"
    t.index ["user_id", "friend_id"], name: "index_friends_users_on_user_id_and_friend_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.string "publisher"
    t.integer "user_id", null: false
    t.integer "in_game_friend_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["in_game_friend_id"], name: "index_games_on_in_game_friend_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "in_game_friends", force: :cascade do |t|
    t.string "in_game_username"
    t.string "in_game_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profile_settings", force: :cascade do |t|
    t.string "activity_status"
    t.string "show_profile"
    t.string "message_permission"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profile_settings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "games", "in_game_friends"
  add_foreign_key "games", "users"
  add_foreign_key "profile_settings", "users"
end
