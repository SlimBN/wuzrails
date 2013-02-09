require 'test_helper'

class AcquirementsControllerTest < ActionController::TestCase
  setup do
    @acquirement = acquirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acquirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acquirement" do
    assert_difference('Acquirement.count') do
      post :create, acquirement: { created_at: @acquirement.created_at, manufacturer_id: @acquirement.manufacturer_id, purchased_at: @acquirement.purchased_at, shop_id: @acquirement.shop_id, updated_at: @acquirement.updated_at }
    end

    assert_redirected_to acquirement_path(assigns(:acquirement))
  end

  test "should show acquirement" do
    get :show, id: @acquirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acquirement
    assert_response :success
  end

  test "should update acquirement" do
    put :update, id: @acquirement, acquirement: { created_at: @acquirement.created_at, manufacturer_id: @acquirement.manufacturer_id, purchased_at: @acquirement.purchased_at, shop_id: @acquirement.shop_id, updated_at: @acquirement.updated_at }
    assert_redirected_to acquirement_path(assigns(:acquirement))
  end

  test "should destroy acquirement" do
    assert_difference('Acquirement.count', -1) do
      delete :destroy, id: @acquirement
    end

    assert_redirected_to acquirements_path
  end
end
