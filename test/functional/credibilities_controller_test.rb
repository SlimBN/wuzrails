require 'test_helper'

class CredibilitiesControllerTest < ActionController::TestCase
  setup do
    @credibility = credibilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credibilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credibility" do
    assert_difference('Credibility.count') do
      post :create, credibility: { category_id: @credibility.category_id, created_at: @credibility.created_at, updated_at: @credibility.updated_at, value: @credibility.value }
    end

    assert_redirected_to credibility_path(assigns(:credibility))
  end

  test "should show credibility" do
    get :show, id: @credibility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credibility
    assert_response :success
  end

  test "should update credibility" do
    put :update, id: @credibility, credibility: { category_id: @credibility.category_id, created_at: @credibility.created_at, updated_at: @credibility.updated_at, value: @credibility.value }
    assert_redirected_to credibility_path(assigns(:credibility))
  end

  test "should destroy credibility" do
    assert_difference('Credibility.count', -1) do
      delete :destroy, id: @credibility
    end

    assert_redirected_to credibilities_path
  end
end
