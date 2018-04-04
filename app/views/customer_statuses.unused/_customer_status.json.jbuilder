json.extract! customer_status, :id, :customer_status_description, :customer_id, :created_at, :updated_at
json.url customer_status_url(customer_status, format: :json)
