require 'test_helper'

class RequirementTypesControllerTest < ActionController::TestCase
  setup do
    @requirement_type = requirement_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requirement_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requirement_type" do
    assert_difference('RequirementType.count') do
      post :create, :requirement_type => @requirement_type.attributes
    end

    assert_redirected_to requirement_type_path(assigns(:requirement_type))
  end

  test "should show requirement_type" do
    get :show, :id => @requirement_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @requirement_type
    assert_response :success
  end

  test "should update requirement_type" do
    put :update, :id => @requirement_type, :requirement_type => @requirement_type.attributes
    assert_redirected_to requirement_type_path(assigns(:requirement_type))
  end

  test "should destroy requirement_type" do
    assert_difference('RequirementType.count', -1) do
      delete :destroy, :id => @requirement_type
    end

    assert_redirected_to requirement_types_path
  end
end
