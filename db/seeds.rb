# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)

employee_status_1 = EmployeeStatus.new(
  employee_status_type: 'Active'
)
employee_status_1.save

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
