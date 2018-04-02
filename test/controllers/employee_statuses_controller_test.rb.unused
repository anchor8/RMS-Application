require 'test_helper'

class EmployeeStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_status = employee_statuses(:one)
  end

  test "should get index" do
    get employee_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_status_url
    assert_response :success
  end

  test "should create employee_status" do
    assert_difference('EmployeeStatus.count') do
      post employee_statuses_url, params: { employee_status: { employee_status_type: @employee_status.employee_status_type } }
    end

    assert_redirected_to employee_status_url(EmployeeStatus.last)
  end

  test "should show employee_status" do
    get employee_status_url(@employee_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_status_url(@employee_status)
    assert_response :success
  end

  test "should update employee_status" do
    patch employee_status_url(@employee_status), params: { employee_status: { employee_status_type: @employee_status.employee_status_type } }
    assert_redirected_to employee_status_url(@employee_status)
  end

  test "should destroy employee_status" do
    assert_difference('EmployeeStatus.count', -1) do
      delete employee_status_url(@employee_status)
    end

    assert_redirected_to employee_statuses_url
  end
end
