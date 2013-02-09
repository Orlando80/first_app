require 'test_helper'

class MicropostControllerTest < ActionController::TestCase
  setup do
    @micropost = microposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropost" do
    assert_difference('Micropost.count') do
      post :create, microposts: { content: @micropost.content, user_id: @micropost.user_id }
    end

    assert_redirected_to micropost_path(assigns(:microposts))
  end

  test "should show micropost" do
    get :show, id: @micropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropost
    assert_response :success
  end

  test "should update micropost" do
    put :update, id: @micropost, microposts: { content: @micropost.content, user_id: @micropost.user_id }
    assert_redirected_to micropost_path(assigns(:microposts))
  end

  test "should destroy micropost" do
    assert_difference('Micropost.count', -1) do
      delete :destroy, id: @micropost
    end

    assert_redirected_to microposts_path
  end
end
