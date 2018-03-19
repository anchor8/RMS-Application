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

employee_status_1 = EmployeeStatus.create([
                                            { employee_status_type: 'Active' }
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
                    { order_status_description: 'Order has not been shipped to customer yet' }
                  ])

#### country data ####

Country.create([
                 { id: '1', country_name: 'United States of America' }
               ])

#### payment type data ####

PaymentType.create([
                     { id: '1', payment_type_description: 'Cash' },
                     { id: '2', payment_type_description: 'Credit' },
                     { id: '3', payment_type_description: 'Debit' },
                     { id: '4', payment_type_description: 'Check' },
                     { id: '5', payment_type_description: 'Paypal' }
                  ])

#### ship_vium data ####

ShipVium.create([
                  { id: '1', ship_via_description: 'USPS Express Mail' },
                  { id: '2', ship_via_description: 'USPS Priority Mail' },
                  { id: '3', ship_via_description: 'USPS First Class Mail' },
                  { id: '4', ship_via_description: 'FedEx' },
                  { id: '5', ship_via_description: 'FedEx Freight' },
                  { id: '6', ship_via_description: 'DHL' }
               ])

#### Order Line Data ####

OrderLine.create([
                   {id: '1',
                    item_number: '235236',
                    item_description: 'Stainless AMV - Auto Manual Valve',
                    item_quantity: '10',
                    item_price: '500.00',
                    item_total_cost: '5000.00',
                    tax_rate: '8.25',
                    tax_amount: '412.5'}
                ])

#### state data ####

state = State.create([
                       { id: '1', StateName: 'Alabama' },
                       { id: '2', StateName: 'Alaska' },
                       { id: '3', StateName: 'Arizona' },
                       { id: '4', StateName: 'Arkansas' },
                       { id: '5', StateName: 'California' },
                       { id: '6', StateName: 'Colorado' },
                       { id: '7', StateName: 'Connecticut' },
                       { id: '8', StateName: 'Delaware' },
                       { id: '9', StateName: 'District of Columbia' },
                       { id: '10', StateName: 'Florida' },
                       { id: '11', StateName: 'Georgia' },
                       { id: '12', StateName: 'Hawaii' },
                       { id: '13', StateName: 'Idaho' },
                       { id: '14', StateName: 'Illinois' },
                       { id: '15', StateName: 'Indiana' },
                       { id: '16', StateName: 'Iowa' },
                       { id: '17', StateName: 'Kansas' },
                       { id: '18', StateName: 'Kentucky' },
                       { id: '19', StateName: 'Louisiana' },
                       { id: '20', StateName: 'Maine' },
                       { id: '21', StateName: 'Maryland' },
                       { id: '22', StateName: 'Massachusetts' },
                       { id: '23', StateName: 'Michigan' },
                       { id: '24', StateName: 'Minnesota' },
                       { id: '25', StateName: 'Mississippi' },
                       { id: '26', StateName: 'Missouri' },
                       { id: '27', StateName: 'Montana' },
                       { id: '28', StateName: 'Nebraska' },
                       { id: '29', StateName: 'Nevada' },
                       { id: '30', StateName: 'New Hampshire' },
                       { id: '31', StateName: 'New Jersey' },
                       { id: '32', StateName: 'New Mexico' },
                       { id: '33', StateName: 'New York' },
                       { id: '34', StateName: 'North Carolina' },
                       { id: '35', StateName: 'North Dakota' },
                       { id: '36', StateName: 'Ohio' },
                       { id: '37', StateName: 'Oklahoma' },
                       { id: '38', StateName: 'Oregon' },
                       { id: '39', StateName: 'Pennsylvania' },
                       { id: '40', StateName: 'Puerto Rico' },
                       { id: '41', StateName: 'Rhode Island' },
                       { id: '42', StateName: 'South Carolina' },
                       { id: '43', StateName: 'South Dakota' },
                       { id: '44', StateName: 'Tennessee' },
                       { id: '45', StateName: 'Texas' },
                       { id: '46', StateName: 'Utah' },
                       { id: '47', StateName: 'Vermont' },
                       { id: '48', StateName: 'Virginia' },
                       { id: '49', StateName: 'Washington' },
                       { id: '50', StateName: 'West Virginia' },
                       { id: '51', StateName: 'Wisconsin' },
                       { id: '52', StateName: 'Wyoming' }
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
