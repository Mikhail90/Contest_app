require 'test_helper'

class ContestOptinsControllerTest < ActionController::TestCase
  setup do
    @contest_optin = contest_optins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contest_optins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest_optin" do
    assert_difference('ContestOptin.count') do
      post :create, contest_optin: { contest_id: @contest_optin.contest_id, optinpartner_id: @contest_optin.optinpartner_id }
    end

    assert_redirected_to contest_optin_path(assigns(:contest_optin))
  end

  test "should show contest_optin" do
    get :show, id: @contest_optin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contest_optin
    assert_response :success
  end

  test "should update contest_optin" do
    put :update, id: @contest_optin, contest_optin: { contest_id: @contest_optin.contest_id, optinpartner_id: @contest_optin.optinpartner_id }
    assert_redirected_to contest_optin_path(assigns(:contest_optin))
  end

  test "should destroy contest_optin" do
    assert_difference('ContestOptin.count', -1) do
      delete :destroy, id: @contest_optin
    end

    assert_redirected_to contest_optins_path
  end
end
