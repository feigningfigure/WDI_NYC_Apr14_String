require 'test_helper'

class SuperteamsControllerTest < ActionController::TestCase
  setup do
    @superteam = superteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:superteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create superteam" do
    assert_difference('Superteam.count') do
      post :create, superteam: {  }
    end

    assert_redirected_to superteam_path(assigns(:superteam))
  end

  test "should show superteam" do
    get :show, id: @superteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @superteam
    assert_response :success
  end

  test "should update superteam" do
    patch :update, id: @superteam, superteam: {  }
    assert_redirected_to superteam_path(assigns(:superteam))
  end

  test "should destroy superteam" do
    assert_difference('Superteam.count', -1) do
      delete :destroy, id: @superteam
    end

    assert_redirected_to superteams_path
  end
end
