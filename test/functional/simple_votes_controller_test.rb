require 'test_helper'

class SimpleVotesControllerTest < ActionController::TestCase
  setup do
    @simple_vote = simple_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_vote" do
    assert_difference('SimpleVote.count') do
      post :create, simple_vote: { answer_id,shop_id,manufacturer_id,comment_id,product_id: @simple_vote.answer_id,shop_id,manufacturer_id,comment_id,product_id, created_at: @simple_vote.created_at, is_in_favor: @simple_vote.is_in_favor }
    end

    assert_redirected_to simple_vote_path(assigns(:simple_vote))
  end

  test "should show simple_vote" do
    get :show, id: @simple_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_vote
    assert_response :success
  end

  test "should update simple_vote" do
    put :update, id: @simple_vote, simple_vote: { answer_id,shop_id,manufacturer_id,comment_id,product_id: @simple_vote.answer_id,shop_id,manufacturer_id,comment_id,product_id, created_at: @simple_vote.created_at, is_in_favor: @simple_vote.is_in_favor }
    assert_redirected_to simple_vote_path(assigns(:simple_vote))
  end

  test "should destroy simple_vote" do
    assert_difference('SimpleVote.count', -1) do
      delete :destroy, id: @simple_vote
    end

    assert_redirected_to simple_votes_path
  end
end
