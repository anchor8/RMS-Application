require 'test_helper'

class ShipViaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ship_vium = ship_via(:one)
  end

  test "should get index" do
    get ship_via_url
    assert_response :success
  end

  test "should get new" do
    get new_ship_vium_url
    assert_response :success
  end

  test "should create ship_vium" do
    assert_difference('ShipVium.count') do
      post ship_via_url, params: { ship_vium: { ship_via_description: @ship_vium.ship_via_description } }
    end

    assert_redirected_to ship_vium_url(ShipVium.last)
  end

  test "should show ship_vium" do
    get ship_vium_url(@ship_vium)
    assert_response :success
  end

  test "should get edit" do
    get edit_ship_vium_url(@ship_vium)
    assert_response :success
  end

  test "should update ship_vium" do
    patch ship_vium_url(@ship_vium), params: { ship_vium: { ship_via_description: @ship_vium.ship_via_description } }
    assert_redirected_to ship_vium_url(@ship_vium)
  end

  test "should destroy ship_vium" do
    assert_difference('ShipVium.count', -1) do
      delete ship_vium_url(@ship_vium)
    end

    assert_redirected_to ship_via_url
  end
end
