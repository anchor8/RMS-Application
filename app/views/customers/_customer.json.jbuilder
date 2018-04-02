json.extract! customer, :id, :state_id, :company_name, :customer_first_name, :customer_last_name, :job_title, :work_phone, :mobile, :fax, :customer_email, :customer_cc_email, :website, :social_media_address, :street_address_1, :street_address_2, :city, :zip_code, :created_at, :updated_at
json.url customer_url(customer, format: :json)
