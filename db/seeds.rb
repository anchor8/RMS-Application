# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)

#### employee status data ####
puts ''
csv_text = File.read(Rails.root.join('lib', 'seeds', 'employee_statuses.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = EmployeeStatus.new
  t.employee_status_type = row['employee_status_type']
  t.save!
  puts "Employee status, #{t.employee_status_type} saved"
end
puts ''

#### employee data ####
admin = Employee.new(
  email: 'anchor8solutions@gmail.com',
  password: 'Password1!',
  password_confirmation: 'Password1!',
  admin: true,
  employee_status_id: 2,
  fname: 'Anchor',
  lname: 'Eight',
  phone: '1-800-888-3015'
)
admin.save!

employee1 = Employee.new(
  email: 'd.robinson@rms.com',
  password: 'Password1!',
  password_confirmation: 'Password1!',
  admin: false,
  employee_status_id: 2,
  fname: 'Debra',
  lname: 'Robinson',
  phone: '832-523-1344'
)
employee1.save!

employee2 = Employee.new(
  email: 'j.badger@rms.com',
  password: 'Password1!',
  password_confirmation: 'Password1!',
  admin: false,
  employee_status_id: 2,
  fname: 'Jim',
  lname: 'Badger',
  phone: '281-552-6288'
)
employee2.save!

employee3 = Employee.new(
  email: 'c.schmit@rms.com',
  password: 'Password1!',
  password_confirmation: 'Password1!',
  admin: false,
  employee_status_id: 2,
  fname: 'Craig',
  lname: 'Schmit',
  phone: '832-623-0238'
)
employee3.save!

employee4 = Employee.new(
  email: 'b.kubro@rms.com',
  password: 'Password1!',
  password_confirmation: 'Password1!',
  admin: false,
  employee_status_id: 2,
  fname: 'Bob',
  lname: 'Kubro',
  phone: '713-443-5234'
)
employee4.save!

employee5 = Employee.new(
  email: 'b.zizorai@rms.com',
  password: 'Password1!',
  password_confirmation: 'Password1!',
  admin: false,
  employee_status_id: 2,
  fname: 'Bill',
  lname: 'Zizorai',
  phone: '832-773-7274'
)
employee5.save!

#### vendor_status data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'vendor_statuses.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = VendorStatus.new
  t.vendor_status_type = row['vendor_status_type']
  t.save!
  puts "Vendor status, #{t.vendor_status_type} saved"
end
puts ''

#### order_status data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'order_statuses.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = OrderStatus.new
  t.order_status_description = row['order_status_description']
  t.save!
  puts "Order status, #{t.order_status_description} saved"
end
puts ''

#### country data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'countries.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = Country.new
  t.country_name = row['country_name']
  t.save!
  puts "Country, #{t.country_name} saved"
end
puts ''

#### payment type data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'payment_types.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = PaymentType.new
  t.payment_type_description = row['payment_type_description']
  t.save!
  puts "Payment Type, #{t.payment_type_description} saved"
end
puts ''

#### shipper data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'shippers.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = Shipper.new
  t.shipper_description = row['shipper_description']
  t.save!
  puts "Shipper, #{t.shipper_description} saved"
end
puts ''

#### state data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'states.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = State.new
  t.state_name = row['state_name']
  t.save!
  puts "State, #{t.state_name} saved"
end
puts ''

#### customer status ####
csv_text = File.read(Rails.root.join('lib', 'seeds', 'customer_statuses.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = CustomerStatus.new
  t.customer_status_description = row['customer_status_description']
  t.save!
  puts "Customer Status, #{t.customer_status_description} saved"
end
puts ''

#### customer data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'customers.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = Customer.new
  t.customer_status_id = row['customer_status_id']
  t.state_id = row['state_id']
  t.company_name = row['company_name']
  t.customer_first_name = row['customer_first_name']
  t.customer_last_name = row['customer_last_name']
  t.job_title = row['job_title']
  t.work_phone = row['work_phone']
  t.mobile = row['mobile']
  t.fax = row['fax']
  t.customer_email = row['customer_email']
  t.customer_cc_email = row['customer_cc_email']
  t.website = row['website']
  t.social_media_address = row['social_media_address']
  t.street_address_1 = row['street_address_1']
  t.street_address_2 = row['street_address_2']
  t.city = row['city']
  t.zip_code = row['zip_code']
  t.save!
  puts "Customer, #{t.customer_first_name} #{t.customer_last_name} saved"
end
puts ''

#### vendor data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'vendors.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = Vendor.new
  t.state_id = row['state_id']
  t.vendor_status_id = row['vendor_status_id']
  t.vendor_name = row['vendor_name']
  t.contact_name = row['contact_name']
  t.job_title = row['job_title']
  t.work_phone = row['work_phone']
  t.mobile = row['mobile']
  t.fax = row['fax']
  t.vendor_email = row['vendor_email']
  t.vendor_cc_email = row['vendor_cc_email']
  t.website = row['website']
  t.street_address_1 = row['street_address_1']
  t.street_address_2 = row['street_address_2']
  t.city = row['city']
  t.zip_code = row['zip_code']
  t.save!
  puts "Vendor, #{t.vendor_name} saved"
end
puts ''

#### product data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'products.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = Product.new
  t.product_name = row['product_name']
  t.save!
  puts "Product, #{t.product_name} saved"
end
puts ''

#### order data ####
csv_text = File.read(Rails.root.join('lib', 'seeds', 'orders.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = Order.new
  t.vendor_id = row['vendor_id']
  t.order_status_id = row['order_status_id']
  t.customer_id = row['customer_id']
  t.country_id = row['country_id']
  t.employee_id = row['employee_id']
  t.payment_type_id = row['payment_type_id']
  t.shipper_id = row['shipper_id']
  t.state_id = row['state_id']
  t.shipping_number = row['shipping_number']
  t.purchase_order_number = row['purchase_order_number']
  t.order_date = row['order_date']
  t.ship_date = row['ship_date']
  t.save!
  puts "Order, for #{t.vendor_id} and #{t.customer_id} saved"
end
puts ''

#### order line data ####

csv_text = File.read(Rails.root.join('lib', 'seeds', 'order_lines.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = OrderLine.new
  t.order_id = row['order_id']
  t.product_id = row['product_id']
  t.price = row['price']
  t.save!
  puts "Order Line, for #{t.order_id} and #{t.product_id} saved"
end
puts ''
