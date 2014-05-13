require 'test_helper'

class CookieWatchersControllerTest < ActionController::TestCase
  setup do
    @cookie_watcher = cookie_watchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cookie_watchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cookie_watcher" do
    assert_difference('CookieWatcher.count') do
      post :create, cookie_watcher: { cookies: @cookie_watcher.cookies, name: @cookie_watcher.name }
    end

    assert_redirected_to cookie_watcher_path(assigns(:cookie_watcher))
  end

  test "should show cookie_watcher" do
    get :show, id: @cookie_watcher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cookie_watcher
    assert_response :success
  end

  test "should update cookie_watcher" do
    patch :update, id: @cookie_watcher, cookie_watcher: { cookies: @cookie_watcher.cookies, name: @cookie_watcher.name }
    assert_redirected_to cookie_watcher_path(assigns(:cookie_watcher))
  end

  test "should destroy cookie_watcher" do
    assert_difference('CookieWatcher.count', -1) do
      delete :destroy, id: @cookie_watcher
    end

    assert_redirected_to cookie_watchers_path
  end
end
