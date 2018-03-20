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

EmployeeStatus.create([
                        { id: 1,
                          employee_status_type: 'Active' },
                        { id: 2,
                          employee_status_type: 'Inactive' }
                      ])

#### employee data ####

admin = Employee.new(
  email: 'admin@rms.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true,
  employee_status_id: 1,
  fname: 'john',
  lname: 'doe'
)
admin.save!

employee1 = Employee.new(
  email: 'employee1@rms.com',
  password: 'password',
  password_confirmation: 'password',
  employee_status_id: 1,
  fname: 'jane',
  lname: 'smith'
)
employee1.save!

employee2 = Employee.new(
  email: 'employee2@rms.com',
  password: 'password',
  password_confirmation: 'password',
  employee_status_id: 1,
  fname: 'bob',
  lname: 'dillo'
)
employee2.save!

employee3 = Employee.new(
  email: 'employee3@rms.com',
  password: 'password',
  password_confirmation: 'password',
  employee_status_id: 1,
  fname: 'craig',
  lname: 'schmit'
)
employee3.save!

#### vendor_status data ####

VendorStatus.create([
                      { vendor_status_type: 'Inactive' },
                      { vendor_status_type: 'Active' }
                    ])

#### order_status data ####

OrderStatus.create([

                     { order_status_description: 'Not Shipped' },
                     { order_status_description: 'Shipped' }

                   ])

#### country data ####

Country.create([
                 { id: '1',
                   country_name: 'USA' },
                 { id: '2',
                   country_name: 'Canada' },
                 { id: '3',
                   country_name: 'Mexico' },
                 { id: '4',
                   country_name: 'Brazil' },
                 { id: '5',
                   country_name: 'India' },
                 { id: '6',
                   country_name: 'Indonesia' },
                 { id: '7',
                   country_name: 'China' },
                 { id: '8',
                   country_name: 'Japan' },
                 { id: '9',
                   country_name: 'Russia' },
                 { id: '10',
                   country_name: 'United Kingdom' }
               ])

#### payment type data ####

PaymentType.create([
                     { id: '1',
                       payment_type_description: 'Cash' },
                     { id: '2',
                       payment_type_description: 'Credit' },
                     { id: '3',
                       payment_type_description: 'Debit' },
                     { id: '4',
                       payment_type_description: 'Check' },
                     { id: '5',
                       payment_type_description: 'Paypal' }
                   ])

#### shipper data ####

Shipper.create([
                  { id: '1',
                    shipper_description: 'USPS Express Mail' },
                  { id: '2',
                    shipper_description: 'USPS Priority Mail' },
                  { id: '3',
                    shipper_description: 'USPS First Class Mail' },
                  { id: '4',
                    shipper_description: 'FedEx' },
                  { id: '5',
                    shipper_description: 'FedEx Freight' },
                  { id: '6',
                    shipper_description: 'DHL' }
                ])

#### state data ####

State.create([
               { id: '1',
                 state_name: 'Alabama' },
               { id: '2',
                 state_name: 'Alaska' },
               { id: '3',
                 state_name: 'Arizona' },
               { id: '4',
                 state_name: 'Arkansas' },
               { id: '5',
                 state_name: 'California' },
               { id: '6',
                 state_name: 'Colorado' },
               { id: '7',
                 state_name: 'Connecticut' },
               { id: '8',
                 state_name: 'Delaware' },
               { id: '9',
                 state_name: 'District of Columbia' },
               { id: '10',
                 state_name: 'Florida' },
               { id: '11',
                 state_name: 'Georgia' },
               { id: '12',
                 state_name: 'Hawaii' },
               { id: '13',
                 state_name: 'Idaho' },
               { id: '14',
                 state_name: 'Illinois' },
               { id: '15',
                 state_name: 'Indiana' },
               { id: '16',
                 state_name: 'Iowa' },
               { id: '17',
                 state_name: 'Kansas' },
               { id: '18',
                 state_name: 'Kentucky' },
               { id: '19',
                 state_name: 'Louisiana' },
               { id: '20',
                 state_name: 'Maine' },
               { id: '21',
                 state_name: 'Maryland' },
               { id: '22',
                 state_name: 'Massachusetts' },
               { id: '23',
                 state_name: 'Michigan' },
               { id: '24',
                 state_name: 'Minnesota' },
               { id: '25',
                 state_name: 'Mississippi' },
               { id: '26',
                 state_name: 'Missouri' },
               { id: '27',
                 state_name: 'Montana' },
               { id: '28',
                 state_name: 'Nebraska' },
               { id: '29',
                 state_name: 'Nevada' },
               { id: '30',
                 state_name: 'New Hampshire' },
               { id: '31',
                 state_name: 'New Jersey' },
               { id: '32',
                 state_name: 'New Mexico' },
               { id: '33',
                 state_name: 'New York' },
               { id: '34',
                 state_name: 'North Carolina' },
               { id: '35',
                 state_name: 'North Dakota' },
               { id: '36',
                 state_name: 'Ohio' },
               { id: '37',
                 state_name: 'Oklahoma' },
               { id: '38',
                 state_name: 'Oregon' },
               { id: '39',
                 state_name: 'Pennsylvania' },
               { id: '40',
                 state_name: 'Puerto Rico' },
               { id: '41',
                 state_name: 'Rhode Island' },
               { id: '42',
                 state_name: 'South Carolina' },
               { id: '43',
                 state_name: 'South Dakota' },
               { id: '44',
                 state_name: 'Tennessee' },
               { id: '45',
                 state_name: 'Texas' },
               { id: '46',
                 state_name: 'Utah' },
               { id: '47',
                 state_name: 'Vermont' },
               { id: '48',
                 state_name: 'Virginia' },
               { id: '49',
                 state_name: 'Washington' },
               { id: '50',
                 state_name: 'West Virginia' },
               { id: '51',
                 state_name: 'Wisconsin' },
               { id: '52',
                 state_name: 'Wyoming' }
             ])

#### customer data ####

Customer.create([
                  { id: '1',
                    state_id: '45',
                    company_name: 'Home Depot',
                    customer_first_name: 'Julius',
                    customer_last_name: 'Agno',
                    job_title: 'Assistant Manager',
                    work_phone: '281-590-2932',
                    mobile: '281-590-2932',
                    fax: '',
                    customer_email: 'JuliusA@gmail.com',
                    customer_cc_email: '',
                    website: 'www.homedepot.com',
                    social_media_address: '',
                    street_address_1: '12832 W Tomball Highway',
                    street_address_2: '',
                    city: 'Tomball',
                    zip_code: '77377' },
                  { id: '2',
                    state_id: '45',
                    company_name: 'Lowes',
                    customer_first_name: 'John',
                    customer_last_name: 'Doe',
                    job_title: 'Manager',
                    work_phone: '713-584-3884',
                    mobile: '713-584-3884',
                    fax: '',
                    customer_email: 'JD@gmail.com',
                    customer_cc_email: '',
                    website: 'www.lowes.com',
                    social_media_address: '',
                    street_address_1: '2345 antoine rd',
                    street_address_2: '',
                    city: 'Houston',
                    zip_code: '77066' }
                ])

#### vendor data ####

Vendor.create([
                { state_id: 45,
                  vendor_status_id: 2,
                  vendor_name: 'Big Dumb Vendor Co.',
                  contact_name: 'Julius Agno',
                  job_title: 'Chief Anime Officer',
                  work_phone: '281-935-6807',
                  mobile: '281-935-6807',
                  fax: 'no fax',
                  vendor_email: 'agno.julius@gmail.com',
                  vendor_cc_email: 'blank',
                  website: 'www.google.com',
                  street_address_1: '123 Big Wok Way',
                  street_address_2: 'test',
                  city: 'Houston',
                  zip_code: '77001' }
              ])

#### Order Line Data ####


#### order data ####

Order.create([
                 { vendor_id: 1,
                   order_status_id: 2,
                   customer_id: 1,
                   country_id: 1,
                   employee_id: 1,
                   payment_type_id: 2,
                   shipper_id: 1,
                   order_line_id: 1,
                   state_id: 45,
                   shipping_number: '12345',
                   customer_name: 'Home Depot',
                   purchase_order_number: '1',
                   order_date: '2017-01-16 14:12:01',
                   ship_date: '2017-2-16 12:00:00',
                   order_total: '5412.5',
                   street_address_1: '12832 W Tomball Highway',
                   street_address_2: 'numbers',
                   city: 'Tomball',
                   zip_code: '77377'   }
])
