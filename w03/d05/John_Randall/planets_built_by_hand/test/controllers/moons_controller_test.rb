require 'test_helper'

class MoonsControllerTest < ActionController::TestCase
  setup do
    @moon = moons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moon" do
    assert_difference('Moon.count') do
      post :create, moon: { diameter: @moon.diameter, image_url: @moon.image_url, life: @moon.life, mass: @moon.mass, name: @moon.name }
    end

    assert_redirected_to moon_path(assigns(:moon))
  end

  test "should show moon" do
    get :show, id: @moon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moon
    assert_response :success
  end

  test "should update moon" do
    patch :update, id: @moon, moon: { diameter: @moon.diameter, image_url: @moon.image_url, life: @moon.life, mass: @moon.mass, name: @moon.name }
    assert_redirected_to moon_path(assigns(:moon))
  end

  test "should destroy moon" do
    assert_difference('Moon.count', -1) do
      delete :destroy, id: @moon
    end

    assert_redirected_to moons_path
  end
end
