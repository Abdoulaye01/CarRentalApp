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

ActiveRecord::Schema.define(version: 20180203005112) do

  create_table "companies", force: :cascade do |t|
    t.string "city"
    t.string "address"
    t.string "areacode"
    t.integer "phoneNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "address"
    t.string "email"
    t.integer "phoneNumber"
    t.string "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.datetime "pickUpDateTime"
    t.datetime "returnDateTime"
    t.integer "odemeterBefore"
    t.integer "odemeterAfter"
    t.integer "gasTankBefore"
    t.integer "gasTankAfter"
    t.string "customer_id"
    t.string "vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "regNumber"
    t.string "vehicleType"
    t.integer "engineSize"
    t.string "fuelType"
    t.string "colour"
    t.string "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
