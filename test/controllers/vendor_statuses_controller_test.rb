require 'test_helper'

class VendorStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor_status = vendor_statuses(:one)
  end

  test "should get index" do
    get vendor_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_status_url
    assert_response :success
  end

  test "should create vendor_status" do
    assert_difference('VendorStatus.count') do
      post vendor_statuses_url, params: { vendor_status: { vendor_status_type: @vendor_status.vendor_status_type } }
    end

    assert_redirected_to vendor_status_url(VendorStatus.last)
  end

  test "should show vendor_status" do
    get vendor_status_url(@vendor_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_status_url(@vendor_status)
    assert_response :success
  end

  test "should update vendor_status" do
    patch vendor_status_url(@vendor_status), params: { vendor_status: { vendor_status_type: @vendor_status.vendor_status_type } }
    assert_redirected_to vendor_status_url(@vendor_status)
  end

  test "should destroy vendor_status" do
    assert_difference('VendorStatus.count', -1) do
      delete vendor_status_url(@vendor_status)
    end

    assert_redirected_to vendor_statuses_url
  end
end
