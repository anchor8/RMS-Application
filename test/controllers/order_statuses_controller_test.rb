require 'test_helper'

class OrderStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_status = order_statuses(:one)
  end

  test "should get index" do
    get order_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_order_status_url
    assert_response :success
  end

  test "should create order_status" do
    assert_difference('OrderStatus.count') do
      post order_statuses_url, params: { order_status: { order_status_description: @order_status.order_status_description } }
    end

    assert_redirected_to order_status_url(OrderStatus.last)
  end

  test "should show order_status" do
    get order_status_url(@order_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_status_url(@order_status)
    assert_response :success
  end

  test "should update order_status" do
    patch order_status_url(@order_status), params: { order_status: { order_status_description: @order_status.order_status_description } }
    assert_redirected_to order_status_url(@order_status)
  end

  test "should destroy order_status" do
    assert_difference('OrderStatus.count', -1) do
      delete order_status_url(@order_status)
    end

    assert_redirected_to order_statuses_url
  end
end
