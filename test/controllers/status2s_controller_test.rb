require 'test_helper'

class Status2sControllerTest < ActionController::TestCase
  setup do
    @status2 = status2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status2" do
    assert_difference('Status2.count') do
      post :create, status2: { content: @status2.content, name: @status2.name }
    end

    assert_redirected_to status2_path(assigns(:status2))
  end

  test "should show status2" do
    get :show, id: @status2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status2
    assert_response :success
  end

  test "should update status2" do
    patch :update, id: @status2, status2: { content: @status2.content, name: @status2.name }
    assert_redirected_to status2_path(assigns(:status2))
  end

  test "should destroy status2" do
    assert_difference('Status2.count', -1) do
      delete :destroy, id: @status2
    end

    assert_redirected_to status2s_path
  end
end
