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

ActiveRecord::Schema.define(version: 20180314002658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.bigint "state_id"
    t.string "CompanyName"
    t.string "CustomerFirstName"
    t.string "CustomerLastName"
    t.string "JobTitle"
    t.string "WorkPhone"
    t.string "Mobile"
    t.string "Fax"
    t.string "CustomerEmail"
    t.string "CCEmail"
    t.string "Website"
    t.string "SocialMediaAddress"
    t.string "StreetAddress1"
    t.string "StreetAddress2"
    t.string "City"
    t.string "Zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_customers_on_state_id"
  end

  create_table "employee_statuses", force: :cascade do |t|
    t.string "employee_status_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.datetime "deleted_at"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "order_lines", force: :cascade do |t|
    t.integer "item_number"
    t.string "item_description"
    t.integer "item_quantity"
    t.decimal "item_price"
    t.decimal "item_total_cost"
    t.decimal "tax_rate"
    t.decimal "tax_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "order_status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "vendor_id"
    t.bigint "order_status_id"
    t.bigint "customer_id"
    t.bigint "country_id"
    t.bigint "employee_id"
    t.bigint "payment_type_id"
    t.bigint "ship_via_id"
    t.bigint "order_line_id"
    t.bigint "state_id"
    t.integer "ShippingNumber"
    t.string "CustomerName"
    t.integer "PurchaseOrderNumber"
    t.datetime "OrderDate"
    t.datetime "ShipOnDate"
    t.decimal "OrderTotal"
    t.string "StreetAddress1"
    t.string "StreetAddress2"
    t.string "City"
    t.string "Zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_orders_on_country_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["employee_id"], name: "index_orders_on_employee_id"
    t.index ["order_line_id"], name: "index_orders_on_order_line_id"
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
    t.index ["payment_type_id"], name: "index_orders_on_payment_type_id"
    t.index ["ship_via_id"], name: "index_orders_on_ship_via_id"
    t.index ["state_id"], name: "index_orders_on_state_id"
    t.index ["vendor_id"], name: "index_orders_on_vendor_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "payment_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ship_via", force: :cascade do |t|
    t.string "ship_via_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "StateName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendor_statuses", force: :cascade do |t|
    t.string "VendorStatusType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.bigint "state_id"
    t.bigint "vendor_status_id"
    t.string "VendorName"
    t.string "ContactName"
    t.string "JobTitle"
    t.string "WorkPhone"
    t.string "Mobile"
    t.string "Fax"
    t.string "VendorEmail"
    t.string "VendorCCEmail"
    t.string "Website"
    t.string "StreetAddress1"
    t.string "StreetAddress2"
    t.string "City"
    t.string "Zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_vendors_on_state_id"
    t.index ["vendor_status_id"], name: "index_vendors_on_vendor_status_id"
  end

  add_foreign_key "customers", "states"
  add_foreign_key "orders", "countries"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "order_lines"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "payment_types"
  add_foreign_key "orders", "ship_via", column: "ship_via_id"
  add_foreign_key "orders", "states"
  add_foreign_key "orders", "vendors"
  add_foreign_key "vendors", "states"
  add_foreign_key "vendors", "vendor_statuses"
end
