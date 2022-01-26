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

ActiveRecord::Schema.define(version: 2022_01_26_005740) do

  create_table "aboutimages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "abouts", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_tm"
    t.string "title_en"
    t.text "text_ru"
    t.text "text_tm"
    t.text "text_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dealdones", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "logos", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nophotos", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_tm"
    t.text "text_ru"
    t.text "text_tm"
    t.string "year"
    t.string "price"
    t.string "phone"
    t.string "email"
    t.boolean "bought"
    t.boolean "cashless"
    t.integer "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "region_id"
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_purchases_on_brand_id"
    t.index ["region_id"], name: "index_purchases_on_region_id"
    t.index ["type_id"], name: "index_purchases_on_type_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.string "name_tm"
    t.string "name_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rents", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_tm"
    t.string "title_en"
    t.text "text_ru"
    t.text "text_tm"
    t.text "text_en"
    t.integer "region_id", null: false
    t.string "year"
    t.integer "typesofrent_id", null: false
    t.string "phone"
    t.string "price"
    t.string "email"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "search"
    t.boolean "cashless"
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_rents_on_brand_id"
    t.index ["region_id"], name: "index_rents_on_region_id"
    t.index ["typesofrent_id"], name: "index_rents_on_typesofrent_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_tm"
    t.text "text_ru"
    t.text "text_tm"
    t.string "year"
    t.string "price"
    t.string "phone"
    t.string "email"
    t.boolean "sales"
    t.boolean "cashless"
    t.integer "type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "region_id"
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_sales_on_brand_id"
    t.index ["region_id"], name: "index_sales_on_region_id"
    t.index ["type_id"], name: "index_sales_on_type_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "title_ru"
    t.string "title_tm"
    t.string "title_en"
    t.text "text_ru"
    t.text "text_tm"
    t.text "text_en"
    t.integer "region_id", null: false
    t.string "year"
    t.integer "typesofrent_id", null: false
    t.string "phone"
    t.string "price"
    t.string "email"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "cashless"
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_searches_on_brand_id"
    t.index ["region_id"], name: "index_searches_on_region_id"
    t.index ["typesofrent_id"], name: "index_searches_on_typesofrent_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name_ru"
    t.string "name_tm"
    t.string "name_en"
    t.text "text_ru"
    t.text "text_tm"
    t.text "text_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name_tm"
    t.string "name_en"
  end

  create_table "typesofrents", force: :cascade do |t|
    t.string "name"
    t.string "name_tm"
    t.string "name_en"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
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
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "purchases", "brands"
  add_foreign_key "purchases", "regions"
  add_foreign_key "purchases", "types"
  add_foreign_key "rents", "brands"
  add_foreign_key "rents", "regions"
  add_foreign_key "rents", "typesofrents"
  add_foreign_key "sales", "brands"
  add_foreign_key "sales", "regions"
  add_foreign_key "sales", "types"
  add_foreign_key "searches", "brands"
  add_foreign_key "searches", "regions"
  add_foreign_key "searches", "typesofrents"
end
