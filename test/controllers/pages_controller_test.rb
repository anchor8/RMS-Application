require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'should get customermgmt' do
    sign_in employees(:admin)
    get customermgmt_url
    assert_response :success
  end

  test 'should get dashboard' do
    sign_in employees(:admin)
    get dashboard_url
    assert_response :success
  end

  test 'should get datatables' do
    sign_in employees(:admin)
    get datatables_url
    assert_response :success
  end

  test 'should get ordermgmt' do
    sign_in employees(:admin)
    get ordermgmt_url
    assert_response :success
  end

  test 'should get reports' do
    sign_in employees(:admin)
    get reports_url
    assert_response :success
  end

  test 'should get shippingmgmt' do
    sign_in employees(:admin)
    get shippingmgmt_url
    assert_response :success
  end

  test 'should get usermgmt' do
    sign_in employees(:admin)
    get usermgmt_url
    assert_response :success
  end

  test 'should get vendormgmt' do
    sign_in employees(:admin)
    get vendormgmt_url
    assert_response :success
  end
end
