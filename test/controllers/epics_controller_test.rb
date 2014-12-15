require 'test_helper'

class EpicsControllerTest < ActionController::TestCase
  setup do
    @epic = epics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:epics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create epic" do
    assert_difference('Epic.count') do
      post :create, epic: { effort_changed: @epic.effort_changed, effort_original: @epic.effort_original, effort_remaining: @epic.effort_remaining, effort_spent: @epic.effort_spent, effort_tracking: @epic.effort_tracking, epic_assignee: @epic.epic_assignee, epic_component: @epic.epic_component, epic_key: @epic.epic_key, epic_name: @epic.epic_name, epic_reporter: @epic.epic_reporter, epic_status: @epic.epic_status, epic_type: @epic.epic_type, rpt_date: @epic.rpt_date }
    end

    assert_redirected_to epic_path(assigns(:epic))
  end

  test "should show epic" do
    get :show, id: @epic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @epic
    assert_response :success
  end

  test "should update epic" do
    patch :update, id: @epic, epic: { effort_changed: @epic.effort_changed, effort_original: @epic.effort_original, effort_remaining: @epic.effort_remaining, effort_spent: @epic.effort_spent, effort_tracking: @epic.effort_tracking, epic_assignee: @epic.epic_assignee, epic_component: @epic.epic_component, epic_key: @epic.epic_key, epic_name: @epic.epic_name, epic_reporter: @epic.epic_reporter, epic_status: @epic.epic_status, epic_type: @epic.epic_type, rpt_date: @epic.rpt_date }
    assert_redirected_to epic_path(assigns(:epic))
  end

  test "should destroy epic" do
    assert_difference('Epic.count', -1) do
      delete :destroy, id: @epic
    end

    assert_redirected_to epics_path
  end
end
