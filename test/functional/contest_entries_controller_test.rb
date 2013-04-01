require 'test_helper'

class ContestEntriesControllerTest < ActionController::TestCase
  setup do
    @contest_entry = contest_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contest_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest_entry" do
    assert_difference('ContestEntry.count') do
      post :create, contest_entry: { contest_id: @contest_entry.contest_id, contestant_id: @contest_entry.contestant_id }
    end

    assert_redirected_to contest_entry_path(assigns(:contest_entry))
  end

  test "should show contest_entry" do
    get :show, id: @contest_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contest_entry
    assert_response :success
  end

  test "should update contest_entry" do
    put :update, id: @contest_entry, contest_entry: { contest_id: @contest_entry.contest_id, contestant_id: @contest_entry.contestant_id }
    assert_redirected_to contest_entry_path(assigns(:contest_entry))
  end

  test "should destroy contest_entry" do
    assert_difference('ContestEntry.count', -1) do
      delete :destroy, id: @contest_entry
    end

    assert_redirected_to contest_entries_path
  end
end
