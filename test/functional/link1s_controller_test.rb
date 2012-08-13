require 'test_helper'

class Link1sControllerTest < ActionController::TestCase
  setup do
    @link1 = link1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:link1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link1" do
    assert_difference('Link1.count') do
      post :create, link1: { category_id: @link1.category_id, contact_id: @link1.contact_id }
    end

    assert_redirected_to link1_path(assigns(:link1))
  end

  test "should show link1" do
    get :show, id: @link1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @link1
    assert_response :success
  end

  test "should update link1" do
    put :update, id: @link1, link1: { category_id: @link1.category_id, contact_id: @link1.contact_id }
    assert_redirected_to link1_path(assigns(:link1))
  end

  test "should destroy link1" do
    assert_difference('Link1.count', -1) do
      delete :destroy, id: @link1
    end

    assert_redirected_to link1s_path
  end
end
