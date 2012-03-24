require 'test_helper'

class RequirementPrioritiesControllerTest < ActionController::TestCase
  setup do
    @requirement_priority = requirement_priorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requirement_priorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requirement_priority" do
    assert_difference('RequirementPriority.count') do
      post :create, :requirement_priority => @requirement_priority.attributes
    end

    assert_redirected_to requirement_priority_path(assigns(:requirement_priority))
  end

  test "should show requirement_priority" do
    get :show, :id => @requirement_priority
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @requirement_priority
    assert_response :success
  end

  test "should update requirement_priority" do
    put :update, :id => @requirement_priority, :requirement_priority => @requirement_priority.attributes
    assert_redirected_to requirement_priority_path(assigns(:requirement_priority))
  end

  test "should destroy requirement_priority" do
    assert_difference('RequirementPriority.count', -1) do
      delete :destroy, :id => @requirement_priority
    end

    assert_redirected_to requirement_priorities_path
  end
end
