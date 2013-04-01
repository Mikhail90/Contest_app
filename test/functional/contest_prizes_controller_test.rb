require 'test_helper'

class ContestPrizesControllerTest < ActionController::TestCase
  setup do
    @contest_prize = contest_prizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contest_prizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest_prize" do
    assert_difference('ContestPrize.count') do
      post :create, contest_prize: { contest_id: @contest_prize.contest_id, prize_id: @contest_prize.prize_id }
    end

    assert_redirected_to contest_prize_path(assigns(:contest_prize))
  end

  test "should show contest_prize" do
    get :show, id: @contest_prize
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contest_prize
    assert_response :success
  end

  test "should update contest_prize" do
    put :update, id: @contest_prize, contest_prize: { contest_id: @contest_prize.contest_id, prize_id: @contest_prize.prize_id }
    assert_redirected_to contest_prize_path(assigns(:contest_prize))
  end

  test "should destroy contest_prize" do
    assert_difference('ContestPrize.count', -1) do
      delete :destroy, id: @contest_prize
    end

    assert_redirected_to contest_prizes_path
  end
end
