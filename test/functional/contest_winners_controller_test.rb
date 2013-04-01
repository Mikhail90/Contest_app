require 'test_helper'

class ContestWinnersControllerTest < ActionController::TestCase
  setup do
    @contest_winner = contest_winners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contest_winners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest_winner" do
    assert_difference('ContestWinner.count') do
      post :create, contest_winner: { contestant_id: @contest_winner.contestant_id, prize_id: @contest_winner.prize_id }
    end

    assert_redirected_to contest_winner_path(assigns(:contest_winner))
  end

  test "should show contest_winner" do
    get :show, id: @contest_winner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contest_winner
    assert_response :success
  end

  test "should update contest_winner" do
    put :update, id: @contest_winner, contest_winner: { contestant_id: @contest_winner.contestant_id, prize_id: @contest_winner.prize_id }
    assert_redirected_to contest_winner_path(assigns(:contest_winner))
  end

  test "should destroy contest_winner" do
    assert_difference('ContestWinner.count', -1) do
      delete :destroy, id: @contest_winner
    end

    assert_redirected_to contest_winners_path
  end
end
