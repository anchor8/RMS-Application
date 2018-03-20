require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { city: @order.city, country_id: @order.country_id, customer_id: @order.customer_id, customer_name: @order.customer_name, employee_id: @order.employee_id, order_date: @order.order_date, order_line_id: @order.order_line_id, order_status_id: @order.order_status_id, order_total: @order.order_total, payment_type_id: @order.payment_type_id, purchase_order_number: @order.purchase_order_number, ship_date: @order.ship_date, shipper_id: @order.shipper_id, shipping_number: @order.shipping_number, state_id: @order.state_id, street_address_1: @order.street_address_1, street_address_2: @order.street_address_2, vendor_id: @order.vendor_id, zip_code: @order.zip_code } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { city: @order.city, country_id: @order.country_id, customer_id: @order.customer_id, customer_name: @order.customer_name, employee_id: @order.employee_id, order_date: @order.order_date, order_line_id: @order.order_line_id, order_status_id: @order.order_status_id, order_total: @order.order_total, payment_type_id: @order.payment_type_id, purchase_order_number: @order.purchase_order_number, ship_date: @order.ship_date, shipper_id: @order.shipper_id, shipping_number: @order.shipping_number, state_id: @order.state_id, street_address_1: @order.street_address_1, street_address_2: @order.street_address_2, vendor_id: @order.vendor_id, zip_code: @order.zip_code } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
