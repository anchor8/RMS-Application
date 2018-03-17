json.extract! customer, :id, :state_id, :CompanyName, :CustomerFirstName, :CustomerLastName, :JobTitle, :WorkPhone, :Mobile, :Fax, :CustomerEmail, :CCEmail, :Website, :SocialMediaAddress, :StreetAddress1, :StreetAddress2, :City, :Zipcode, :created_at, :updated_at
json.url customer_url(customer, format: :json)
