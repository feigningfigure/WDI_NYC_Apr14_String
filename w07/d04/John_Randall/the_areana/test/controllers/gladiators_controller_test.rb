require 'test_helper'

class GladiatorsControllerTest < ActionController::TestCase
  setup do
    @gladiator = gladiators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gladiators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gladiator" do
    assert_difference('Gladiator.count') do
      post :create, gladiator: { name: @gladiator.name, victory_count: @gladiator.victory_count, weapon: @gladiator.weapon }
    end

    assert_redirected_to gladiator_path(assigns(:gladiator))
  end

  test "should show gladiator" do
    get :show, id: @gladiator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gladiator
    assert_response :success
  end

  test "should update gladiator" do
    patch :update, id: @gladiator, gladiator: { name: @gladiator.name, victory_count: @gladiator.victory_count, weapon: @gladiator.weapon }
    assert_redirected_to gladiator_path(assigns(:gladiator))
  end

  test "should destroy gladiator" do
    assert_difference('Gladiator.count', -1) do
      delete :destroy, id: @gladiator
    end

    assert_redirected_to gladiators_path
  end
end
