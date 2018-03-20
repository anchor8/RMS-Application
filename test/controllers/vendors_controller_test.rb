require 'test_helper'

class VendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get vendors_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_url
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post vendors_url, params: { vendor: { city: @vendor.city, contact_name: @vendor.contact_name, fax: @vendor.fax, job_title: @vendor.job_title, mobile: @vendor.mobile, state_id: @vendor.state_id, street_address_1: @vendor.street_address_1, street_address_2: @vendor.street_address_2, vendor_cc_email: @vendor.vendor_cc_email, vendor_email: @vendor.vendor_email, vendor_name: @vendor.vendor_name, vendor_status_id: @vendor.vendor_status_id, website: @vendor.website, work_phone: @vendor.work_phone, zip_code: @vendor.zip_code } }
    end

    assert_redirected_to vendor_url(Vendor.last)
  end

  test "should show vendor" do
    get vendor_url(@vendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_url(@vendor)
    assert_response :success
  end

  test "should update vendor" do
    patch vendor_url(@vendor), params: { vendor: { city: @vendor.city, contact_name: @vendor.contact_name, fax: @vendor.fax, job_title: @vendor.job_title, mobile: @vendor.mobile, state_id: @vendor.state_id, street_address_1: @vendor.street_address_1, street_address_2: @vendor.street_address_2, vendor_cc_email: @vendor.vendor_cc_email, vendor_email: @vendor.vendor_email, vendor_name: @vendor.vendor_name, vendor_status_id: @vendor.vendor_status_id, website: @vendor.website, work_phone: @vendor.work_phone, zip_code: @vendor.zip_code } }
    assert_redirected_to vendor_url(@vendor)
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete vendor_url(@vendor)
    end

    assert_redirected_to vendors_url
  end
end
