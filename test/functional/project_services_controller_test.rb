require 'test_helper'

class ProjectServicesControllerTest < ActionController::TestCase
  setup do
    @project_service = project_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_service" do
    assert_difference('ProjectService.count') do
      post :create, :project_service => @project_service.attributes
    end

    assert_redirected_to project_service_path(assigns(:project_service))
  end

  test "should show project_service" do
    get :show, :id => @project_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project_service
    assert_response :success
  end

  test "should update project_service" do
    put :update, :id => @project_service, :project_service => @project_service.attributes
    assert_redirected_to project_service_path(assigns(:project_service))
  end

  test "should destroy project_service" do
    assert_difference('ProjectService.count', -1) do
      delete :destroy, :id => @project_service
    end

    assert_redirected_to project_services_path
  end
end
