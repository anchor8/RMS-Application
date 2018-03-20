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
  employee_status_id: 1
)
admin.save!

employee1 = Employee.new(
  email: 'employee1@rms.com',
  password: 'password',
  password_confirmation: 'password',
  employee_status_id: 1
)
employee1.save!

employee2 = Employee.new(
  email: 'employee2@rms.com',
  password: 'password',
  password_confirmation: 'password',
  employee_status_id: 1
)
employee2.save!

employee3 = Employee.new(
  email: 'employee3@rms.com',
  password: 'password',
  password_confirmation: 'password',
  employee_status_id: 1
)
employee3.save!

#### vendor_status data ####

VendorStatus.create([
                      { VendorStatusType: 'Inactive' },
                      { VendorStatusType: 'Active' }
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

#### ship_vium data ####


ShipVia.create([
                  { id: '1', ship_via_description: 'USPS Express Mail' },
                  { id: '2', ship_via_description: 'USPS Priority Mail' },
                  { id: '3', ship_via_description: 'USPS First Class Mail' },
                  { id: '4', ship_via_description: 'FedEx' },
                  { id: '5', ship_via_description: 'FedEx Freight' },
                  { id: '6', ship_via_description: 'DHL' }

                ])



#### state data ####

State.create([
               { id: '1',
                 StateName: 'Alabama' },
               { id: '2',
                 StateName: 'Alaska' },
               { id: '3',
                 StateName: 'Arizona' },
               { id: '4',
                 StateName: 'Arkansas' },
               { id: '5',
                 StateName: 'California' },
               { id: '6',
                 StateName: 'Colorado' },
               { id: '7',
                 StateName: 'Connecticut' },
               { id: '8',
                 StateName: 'Delaware' },
               { id: '9',
                 StateName: 'District of Columbia' },
               { id: '10',
                 StateName: 'Florida' },
               { id: '11',
                 StateName: 'Georgia' },
               { id: '12',
                 StateName: 'Hawaii' },
               { id: '13',
                 StateName: 'Idaho' },
               { id: '14',
                 StateName: 'Illinois' },
               { id: '15',
                 StateName: 'Indiana' },
               { id: '16',
                 StateName: 'Iowa' },
               { id: '17',
                 StateName: 'Kansas' },
               { id: '18',
                 StateName: 'Kentucky' },
               { id: '19',
                 StateName: 'Louisiana' },
               { id: '20',
                 StateName: 'Maine' },
               { id: '21',
                 StateName: 'Maryland' },
               { id: '22',
                 StateName: 'Massachusetts' },
               { id: '23',
                 StateName: 'Michigan' },
               { id: '24',
                 StateName: 'Minnesota' },
               { id: '25',
                 StateName: 'Mississippi' },
               { id: '26',
                 StateName: 'Missouri' },
               { id: '27',
                 StateName: 'Montana' },
               { id: '28',
                 StateName: 'Nebraska' },
               { id: '29',
                 StateName: 'Nevada' },
               { id: '30',
                 StateName: 'New Hampshire' },
               { id: '31',
                 StateName: 'New Jersey' },
               { id: '32',
                 StateName: 'New Mexico' },
               { id: '33',
                 StateName: 'New York' },
               { id: '34',
                 StateName: 'North Carolina' },
               { id: '35',
                 StateName: 'North Dakota' },
               { id: '36',
                 StateName: 'Ohio' },
               { id: '37',
                 StateName: 'Oklahoma' },
               { id: '38',
                 StateName: 'Oregon' },
               { id: '39',
                 StateName: 'Pennsylvania' },
               { id: '40',
                 StateName: 'Puerto Rico' },
               { id: '41',
                 StateName: 'Rhode Island' },
               { id: '42',
                 StateName: 'South Carolina' },
               { id: '43',
                 StateName: 'South Dakota' },
               { id: '44',
                 StateName: 'Tennessee' },
               { id: '45',
                 StateName: 'Texas' },
               { id: '46',
                 StateName: 'Utah' },
               { id: '47',
                 StateName: 'Vermont' },
               { id: '48',
                 StateName: 'Virginia' },
               { id: '49',
                 StateName: 'Washington' },
               { id: '50',
                 StateName: 'West Virginia' },
               { id: '51',
                 StateName: 'Wisconsin' },
               { id: '52',
                 StateName: 'Wyoming' }
             ])

#### customer data ####

Customer.create([
                  { id: '1',
                    state_id: '45',
                    CompanyName: 'Home Depot',
                    CustomerFirstName: 'Julius',
                    CustomerLastName: 'Agno',
                    JobTitle: 'Assistant Manager',
                    WorkPhone: '281-590-2932',
                    Mobile: '281-590-2932',
                    Fax: '',
                    CustomerEmail: 'JuliusA@gmail.com',
                    CCEmail: '',
                    Website: 'www.homedepot.com',
                    SocialMediaAddress: '',
                    StreetAddress1: '12832 W Tomball Highway',
                    StreetAddress2: '',
                    City: 'Tomball',
                    Zipcode: '77377' },
                  { id: '2',
                    state_id: '45',
                    CompanyName: 'Lowes',
                    CustomerFirstName: 'John',
                    CustomerLastName: 'Doe',
                    JobTitle: 'Manager',
                    WorkPhone: '713-584-3884',
                    Mobile: '713-584-3884',
                    Fax: '',
                    CustomerEmail: 'JD@gmail.com',
                    CCEmail: '',
                    Website: 'www.lowes.com',
                    SocialMediaAddress: '',
                    StreetAddress1: '2345 antoine rd',
                    StreetAddress2: '',
                    City: 'Houston',
                    Zipcode: '77066' }
                ])

#### vendor data ####

Vendor.create([
                { state_id: 45,
                  vendor_status_id: 2,
                  VendorName: 'Big Dumb Vendor Co.',
                  ContactName: 'Julius Agno',
                  JobTitle: 'Chief Anime Officer',
                  WorkPhone: '281-935-6807',
                  Mobile: '281-935-6807',
                  Fax: 'no fax',
                  VendorEmail: 'agno.julius@gmail.com',
                  VendorCCEmail: 'blank',
                  Website: 'www.google.com',
                  StreetAddress1: '123 Big Wok Way',
                  StreetAddress2: 'test',
                  City: 'Houston',
                  Zipcode: '77001' }
              ])





#### Order Line Data ####

OrderLine.create([
                   { id: '1',
                     item_number: '235236',
                     item_description: 'Stainless AMV - Auto Manual Valve',
                     item_quantity: '10',
                     item_price: '500.00',
                     item_total_cost: '5000.00',
                     tax_rate: '8.25',
                     tax_amount: '412.50' },
                   { id: '2',
                     item_number: '765416',
                     item_description: 'Generic Valve',
                     item_quantity: '150',
                     item_price: '50.00',
                     item_total_cost: '7500.00',
                     tax_rate: '8.25',
                     tax_amount: '618.75' },
                   { id: '3',
                     item_number: '444211',
                     item_description: 'Generic Fitting',
                     item_quantity: '100',
                     item_price: '100.00',
                     item_total_cost: '10000.00',
                     tax_rate: '8.25',
                     tax_amount: '825.00' },
                   { id: '4',
                     item_number: '141134',
                     item_description: 'Steel Piping',
                     item_quantity: '5',
                     item_price: '500.00',
                     item_total_cost: '2500.00',
                     tax_rate: '8.25',
                     tax_amount: '206.25' },
                   { id: '5',
                     item_number: '144321',
                     item_description: 'Steel Corner Piping',
                     item_quantity: '15',
                     item_price: '50.00',
                     item_total_cost: '750.00',
                     tax_rate: '8.25',
                     tax_amount: '61.875' },
                   { id: '6',
                     item_number: '111236',
                     item_description: 'Steel U Piping',
                     item_quantity: '10',
                     item_price: '100.00',
                     item_total_cost: '1000.00',
                     tax_rate: '8.25',
                     tax_amount: '82.50' },
                   { id: '7',
                     item_number: '146126',
                     item_description: 'PVC Fitting',
                     item_quantity: '170',
                     item_price: '130.00',
                     item_total_cost: '22100.00',
                     tax_rate: '8.25',
                     tax_amount: '1823.25' },
                   { id: '8',
                     item_number: '131256',
                     item_description: 'PVC Piping',
                     item_quantity: '140',
                     item_price: '110.00',
                     item_total_cost: '15400.00',
                     tax_rate: '8.25',
                     tax_amount: '1270.50' },
                   { id: '9',
                     item_number: '164236',
                     item_description: 'PVC Corner',
                     item_quantity: '120',
                     item_price: '180.00',
                     item_total_cost: '21600.00',
                     tax_rate: '8.25',
                     tax_amount: '1782.00' },
                   { id: '10',
                     item_number: '645236',
                     item_description: 'PVC U Piping',
                     item_quantity: '110',
                     item_price: '170.00',
                     item_total_cost: '18700.00',
                     tax_rate: '8.25',
                     tax_amount: '1542.75' }
                 ])

#### order data ####

Order.create([
                 { vendor_id: 1,
                   order_status_id: 2,
                   customer_id: 1,
                   country_id: 1,
                   employee_id: 1,
                   payment_type_id: 2,
                   ship_via_id: 1,
                   order_line_id: 1,
                   state_id: 45,
                   ShippingNumber: '12345',
                   CustomerName: 'Home Depot',
                   PurchaseOrderNumber: '1',
                   OrderDate: '2017-01-16 14:12:01',
                   ShipOnDate: '2017-2-16 12:00:00',
                   OrderTotal: '5412.5',
                   StreetAddress1: '12832 W Tomball Highway',
                   StreetAddress2: 'numbers',
                   City: 'Tomball',
                   Zipcode: '77377'   }
])