require 'test_helper'

class OrderLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_line = order_lines(:one)
  end

  test "should get index" do
    get order_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_order_line_url
    assert_response :success
  end

  test "should create order_line" do
    assert_difference('OrderLine.count') do
      post order_lines_url, params: { order_line: { item_description: @order_line.item_description, item_number: @order_line.item_number, item_price: @order_line.item_price, item_quantity: @order_line.item_quantity, item_total_cost: @order_line.item_total_cost, tax_amount: @order_line.tax_amount, tax_rate: @order_line.tax_rate } }
    end

    assert_redirected_to order_line_url(OrderLine.last)
  end

  test "should show order_line" do
    get order_line_url(@order_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_line_url(@order_line)
    assert_response :success
  end

  test "should update order_line" do
    patch order_line_url(@order_line), params: { order_line: { item_description: @order_line.item_description, item_number: @order_line.item_number, item_price: @order_line.item_price, item_quantity: @order_line.item_quantity, item_total_cost: @order_line.item_total_cost, tax_amount: @order_line.tax_amount, tax_rate: @order_line.tax_rate } }
    assert_redirected_to order_line_url(@order_line)
  end

  test "should destroy order_line" do
    assert_difference('OrderLine.count', -1) do
      delete order_line_url(@order_line)
    end

    assert_redirected_to order_lines_url
  end
end
