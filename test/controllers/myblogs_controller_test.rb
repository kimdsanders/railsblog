require 'test_helper'

class MyblogsControllerTest < ActionController::TestCase
  setup do
    @myblog = myblogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myblogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myblog" do
    assert_difference('Myblog.count') do
      post :create, myblog: { body: @myblog.body, image: @myblog.image, tag: @myblog.tag, title: @myblog.title }
    end

    assert_redirected_to myblog_path(assigns(:myblog))
  end

  test "should show myblog" do
    get :show, id: @myblog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myblog
    assert_response :success
  end

  test "should update myblog" do
    patch :update, id: @myblog, myblog: { body: @myblog.body, image: @myblog.image, tag: @myblog.tag, title: @myblog.title }
    assert_redirected_to myblog_path(assigns(:myblog))
  end

  test "should destroy myblog" do
    assert_difference('Myblog.count', -1) do
      delete :destroy, id: @myblog
    end

    assert_redirected_to myblogs_path
  end
end
