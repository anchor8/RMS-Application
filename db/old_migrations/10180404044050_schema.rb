class Schema < ActiveRecord::Migration[5.1]
  def change
    create_table "countries", force: :cascade do |t|
      t.string "country_name", limit: 100
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "customer_statuses", force: :cascade do |t|
      t.string "customer_status_description", limit: 50
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "customers", force: :cascade do |t|
      t.bigint "state_id"
      t.string "company_name", limit: 100, null: false
      t.string "customer_first_name", limit: 50, null: false
      t.string "customer_last_name", limit: 35, null: false
      t.string "job_title", limit: 50, null: false
      t.string "work_phone", limit: 26, null: false
      t.string "mobile", limit: 26
      t.string "fax", limit: 26
      t.string "customer_email", limit: 254, null: false
      t.string "customer_cc_email", limit: 254
      t.string "website", limit: 50
      t.string "social_media_address", limit: 50
      t.string "street_address_1", limit: 100, null: false
      t.string "street_address_2", limit: 100
      t.string "city", limit: 60, null: false
      t.string "zip_code", limit: 10, null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.bigint "customer_status_id"
      t.index ["customer_status_id"], name: "index_customers_on_customer_status_id"
      t.index ["state_id"], name: "index_customers_on_state_id"
    end

    create_table "employee_statuses", force: :cascade do |t|
      t.string "employee_status_type", limit: 50
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
      t.string "fname", limit: 50
      t.string "lname", limit: 50
      t.string "phone", limit: 26
      t.integer "employee_status_id", default: 1
      t.index ["email"], name: "index_employees_on_email", unique: true
      t.index ["employee_status_id"], name: "index_employees_on_employee_status_id"
      t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    end

    create_table "order_statuses", force: :cascade do |t|
      t.string "order_status_description", limit: 50
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
      t.bigint "shipper_id"
      t.bigint "state_id"
      t.string "shipping_number", limit: 15
      t.serial "purchase_order_number", null: false
      t.date "order_date", default: "2018-03-14"
      t.date "ship_date"
      t.decimal "order_total"
      t.string "street_address_1", limit: 100
      t.string "street_address_2", limit: 100
      t.string "city", limit: 60
      t.string "zip_code"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.index ["country_id"], name: "index_orders_on_country_id"
      t.index ["customer_id"], name: "index_orders_on_customer_id"
      t.index ["employee_id"], name: "index_orders_on_employee_id"
      t.index ["order_status_id"], name: "index_orders_on_order_status_id"
      t.index ["payment_type_id"], name: "index_orders_on_payment_type_id"
      t.index ["purchase_order_number"], name: "index_orders_on_purchase_order_number", unique: true
      t.index ["shipper_id"], name: "index_orders_on_shipper_id"
      t.index ["state_id"], name: "index_orders_on_state_id"
      t.index ["vendor_id"], name: "index_orders_on_vendor_id"
    end

    create_table "payment_types", force: :cascade do |t|
      t.string "payment_type_description", limit: 50
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "shippers", force: :cascade do |t|
      t.string "shipper_description", limit: 50
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "states", force: :cascade do |t|
      t.string "state_name", limit: 35
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "vendor_statuses", force: :cascade do |t|
      t.string "vendor_status_type", limit: 50
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "vendors", force: :cascade do |t|
      t.bigint "state_id"
      t.bigint "vendor_status_id"
      t.string "vendor_name"
      t.string "contact_name", limit: 100
      t.string "job_title", limit: 50
      t.string "work_phone", limit: 26
      t.string "mobile", limit: 26
      t.string "fax", limit: 26
      t.string "vendor_email", limit: 254
      t.string "vendor_cc_email", limit: 254
      t.string "website", limit: 50
      t.string "street_address_1", limit: 100
      t.string "street_address_2", limit: 100
      t.string "city", limit: 60
      t.string "zip_code", limit: 10
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.index ["state_id"], name: "index_vendors_on_state_id"
      t.index ["vendor_status_id"], name: "index_vendors_on_vendor_status_id"
    end

    add_foreign_key "customers", "customer_statuses"
    add_foreign_key "customers", "states"
    add_foreign_key "employees", "employee_statuses"
    add_foreign_key "orders", "countries"
    add_foreign_key "orders", "customers"
    add_foreign_key "orders", "employees"
    add_foreign_key "orders", "order_statuses"
    add_foreign_key "orders", "payment_types"
    add_foreign_key "orders", "shippers"
    add_foreign_key "orders", "states"
    add_foreign_key "orders", "vendors"
    add_foreign_key "vendors", "states"
    add_foreign_key "vendors", "vendor_statuses"
  end
end
