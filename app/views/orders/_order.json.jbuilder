json.extract! order, :id, :vendor_id, :order_status_id, :customer_id, :country_id, :employee_id, :payment_type_id, :shipper_id, :order_line_id, :state_id, :shipping_number, :customer_name, :purchase_order_number, :order_date, :ship_date, :order_total, :street_address_1, :street_address_2, :city, :zip_code, :created_at, :updated_at
json.url order_url(order, format: :json)
