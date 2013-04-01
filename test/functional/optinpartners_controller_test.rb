require 'test_helper'

class OptinpartnersControllerTest < ActionController::TestCase
  setup do
    @optinpartner = optinpartners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optinpartners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optinpartner" do
    assert_difference('Optinpartner.count') do
      post :create, optinpartner: { label: @optinpartner.label, name: @optinpartner.name }
    end

    assert_redirected_to optinpartner_path(assigns(:optinpartner))
  end

  test "should show optinpartner" do
    get :show, id: @optinpartner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optinpartner
    assert_response :success
  end

  test "should update optinpartner" do
    put :update, id: @optinpartner, optinpartner: { label: @optinpartner.label, name: @optinpartner.name }
    assert_redirected_to optinpartner_path(assigns(:optinpartner))
  end

  test "should destroy optinpartner" do
    assert_difference('Optinpartner.count', -1) do
      delete :destroy, id: @optinpartner
    end

    assert_redirected_to optinpartners_path
  end
end
