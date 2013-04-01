require 'test_helper'

class OptinContestantsControllerTest < ActionController::TestCase
  setup do
    @optin_contestant = optin_contestants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optin_contestants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optin_contestant" do
    assert_difference('OptinContestant.count') do
      post :create, optin_contestant: { contest_id: @optin_contestant.contest_id, contestant_id: @optin_contestant.contestant_id, optinpartner_id: @optin_contestant.optinpartner_id }
    end

    assert_redirected_to optin_contestant_path(assigns(:optin_contestant))
  end

  test "should show optin_contestant" do
    get :show, id: @optin_contestant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optin_contestant
    assert_response :success
  end

  test "should update optin_contestant" do
    put :update, id: @optin_contestant, optin_contestant: { contest_id: @optin_contestant.contest_id, contestant_id: @optin_contestant.contestant_id, optinpartner_id: @optin_contestant.optinpartner_id }
    assert_redirected_to optin_contestant_path(assigns(:optin_contestant))
  end

  test "should destroy optin_contestant" do
    assert_difference('OptinContestant.count', -1) do
      delete :destroy, id: @optin_contestant
    end

    assert_redirected_to optin_contestants_path
  end
end
