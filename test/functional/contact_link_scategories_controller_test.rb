require 'test_helper'

class ContactLinkScategoriesControllerTest < ActionController::TestCase
  setup do
    @contact_link_scategory = contact_link_scategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_link_scategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_link_scategory" do
    assert_difference('ContactLinkScategory.count') do
      post :create, contact_link_scategory: { category_id: @contact_link_scategory.category_id, contact_id: @contact_link_scategory.contact_id }
    end

    assert_redirected_to contact_link_scategory_path(assigns(:contact_link_scategory))
  end

  test "should show contact_link_scategory" do
    get :show, id: @contact_link_scategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_link_scategory
    assert_response :success
  end

  test "should update contact_link_scategory" do
    put :update, id: @contact_link_scategory, contact_link_scategory: { category_id: @contact_link_scategory.category_id, contact_id: @contact_link_scategory.contact_id }
    assert_redirected_to contact_link_scategory_path(assigns(:contact_link_scategory))
  end

  test "should destroy contact_link_scategory" do
    assert_difference('ContactLinkScategory.count', -1) do
      delete :destroy, id: @contact_link_scategory
    end

    assert_redirected_to contact_link_scategories_path
  end
end
