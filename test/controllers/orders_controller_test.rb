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
      post orders_url, params: { order: { City: @order.City, CustomerName: @order.CustomerName, OrderDate: @order.OrderDate, OrderTotal: @order.OrderTotal, PurchaseOrderNumber: @order.PurchaseOrderNumber, ShipOnDate: @order.ShipOnDate, ShippingNumber: @order.ShippingNumber, StreetAddress1: @order.StreetAddress1, StreetAddress2: @order.StreetAddress2, Zipcode: @order.Zipcode, country_id: @order.country_id, customer_id: @order.customer_id, employee_id: @order.employee_id, order_line_id: @order.order_line_id, order_status_id: @order.order_status_id, payment_type_id: @order.payment_type_id, ship_via_id: @order.ship_via_id, state_id: @order.state_id, vendor_id: @order.vendor_id } }
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
    patch order_url(@order), params: { order: { City: @order.City, CustomerName: @order.CustomerName, OrderDate: @order.OrderDate, OrderTotal: @order.OrderTotal, PurchaseOrderNumber: @order.PurchaseOrderNumber, ShipOnDate: @order.ShipOnDate, ShippingNumber: @order.ShippingNumber, StreetAddress1: @order.StreetAddress1, StreetAddress2: @order.StreetAddress2, Zipcode: @order.Zipcode, country_id: @order.country_id, customer_id: @order.customer_id, employee_id: @order.employee_id, order_line_id: @order.order_line_id, order_status_id: @order.order_status_id, payment_type_id: @order.payment_type_id, ship_via_id: @order.ship_via_id, state_id: @order.state_id, vendor_id: @order.vendor_id } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
