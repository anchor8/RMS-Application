json.extract! order, :id, :vendor_id, :order_status_id, :customer_id, :country_id, :employee_id, :payment_type_id, :ship_via_id, :order_line_id, :state_id, :ShippingNumber, :CustomerName, :PurchaseOrderNumber, :OrderDate, :ShipOnDate, :OrderTotal, :StreetAddress1, :StreetAddress2, :City, :Zipcode, :created_at, :updated_at
json.url order_url(order, format: :json)
