require 'test_helper'

class SuppliesControllerTest < ActionController::TestCase
  setup do
    @supply = supplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supply" do
    assert_difference('Supply.count') do
      post :create, supply: { created_at: @supply.created_at, product_id: @supply.product_id, shop_id: @supply.shop_id, supply_count: @supply.supply_count, updated_at: @supply.updated_at }
    end

    assert_redirected_to supply_path(assigns(:supply))
  end

  test "should show supply" do
    get :show, id: @supply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supply
    assert_response :success
  end

  test "should update supply" do
    put :update, id: @supply, supply: { created_at: @supply.created_at, product_id: @supply.product_id, shop_id: @supply.shop_id, supply_count: @supply.supply_count, updated_at: @supply.updated_at }
    assert_redirected_to supply_path(assigns(:supply))
  end

  test "should destroy supply" do
    assert_difference('Supply.count', -1) do
      delete :destroy, id: @supply
    end

    assert_redirected_to supplies_path
  end
end
