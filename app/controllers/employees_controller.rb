# Employees Controller
class EmployeesController < Devise::RegistrationsController
  layout 'logged-in'

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:success] = 'Employee destroyed.'
    redirect_to usermgmt_path
  end
end
