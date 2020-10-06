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

ActiveRecord::Schema.define(version: 2020_10_06_044519) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "backs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "back_first_fa_inning", null: false
    t.integer "back_second_fa_inning", null: false
    t.integer "back_third_fa_inning", null: false
    t.integer "back_fourth_fa_inning", null: false
    t.integer "back_fifth_fa_inning", null: false
    t.integer "back_sixth_fa_inning", null: false
    t.integer "back_seventh_fa_inning", null: false
    t.integer "back_eighth_fa_inning", null: false
    t.integer "back_ninth_fa_inning", null: false
    t.integer "back_first_sa_inning", null: false
    t.integer "back_second_sa_inning", null: false
    t.integer "back_third_sa_inning", null: false
    t.integer "back_fourth_sa_inning", null: false
    t.integer "back_fifth_sa_inning", null: false
    t.integer "back_sixth_sa_inning", null: false
    t.integer "back_seventh_sa_inning", null: false
    t.integer "back_eighth_sa_inning", null: false
    t.integer "back_ninth_sa_inning", null: false
    t.bigint "user_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_backs_on_match_id"
    t.index ["user_id"], name: "index_backs_on_user_id"
  end

  create_table "eighths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "eighth_name_id", null: false
    t.integer "eighth_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_eighths_on_match_id"
  end

  create_table "fifths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "fifth_name_id", null: false
    t.integer "fifth_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_fifths_on_match_id"
  end

  create_table "firsts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "first_name_id", null: false
    t.integer "first_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_firsts_on_match_id"
  end

  create_table "fourths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "fourth_name_id", null: false
    t.integer "fourth_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_fourths_on_match_id"
  end

  create_table "fronts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "first_fa_inning", null: false
    t.integer "second_fa_inning", null: false
    t.integer "third_fa_inning", null: false
    t.integer "fourth_fa_inning", null: false
    t.integer "fifth_fa_inning", null: false
    t.integer "sixth_fa_inning", null: false
    t.integer "seventh_fa_inning", null: false
    t.integer "eighth_fa_inning", null: false
    t.integer "ninth_fa_inning", null: false
    t.integer "first_sa_inning", null: false
    t.integer "second_sa_inning", null: false
    t.integer "third_sa_inning", null: false
    t.integer "fourth_sa_inning", null: false
    t.integer "fifth_sa_inning", null: false
    t.integer "sixth_sa_inning", null: false
    t.integer "seventh_sa_inning", null: false
    t.integer "eighth_sa_inning", null: false
    t.integer "ninth_sa_inning", null: false
    t.bigint "user_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_fronts_on_match_id"
    t.index ["user_id"], name: "index_fronts_on_user_id"
  end

  create_table "matches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "match_name", null: false
    t.integer "year_id", null: false
    t.integer "month_id", null: false
    t.integer "day_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "age", null: false
    t.integer "style_id", null: false
    t.string "number", null: false
    t.boolean "pitcher_position_id", default: false, null: false
    t.boolean "catcher_position_id", default: false, null: false
    t.boolean "inside_position_id", default: false, null: false
    t.boolean "outside_position_id", default: false, null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "ninths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "ninth_name_id", null: false
    t.integer "ninth_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_ninths_on_match_id"
  end

  create_table "scores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "f_attack", null: false
    t.integer "s_attack", null: false
    t.integer "first_fa_inning", null: false
    t.integer "second_fa_inning", null: false
    t.integer "first_sa_inning", null: false
    t.integer "second_sa_inning", null: false
    t.integer "f_total", null: false
    t.integer "s_total", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_scores_on_match_id"
  end

  create_table "seconds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "second_name_id", null: false
    t.integer "second_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_seconds_on_match_id"
  end

  create_table "sevenths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "seventh_name_id", null: false
    t.integer "seventh_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_sevenths_on_match_id"
  end

  create_table "sixths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "sixth_name_id", null: false
    t.integer "sixth_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_sixths_on_match_id"
  end

  create_table "thirds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "third_name_id", null: false
    t.integer "third_position_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_thirds_on_match_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "backs", "matches"
  add_foreign_key "backs", "users"
  add_foreign_key "eighths", "matches"
  add_foreign_key "fifths", "matches"
  add_foreign_key "firsts", "matches"
  add_foreign_key "fourths", "matches"
  add_foreign_key "fronts", "matches"
  add_foreign_key "fronts", "users"
  add_foreign_key "matches", "users"
  add_foreign_key "members", "users"
  add_foreign_key "ninths", "matches"
  add_foreign_key "scores", "matches"
  add_foreign_key "seconds", "matches"
  add_foreign_key "sevenths", "matches"
  add_foreign_key "sixths", "matches"
  add_foreign_key "thirds", "matches"
end
