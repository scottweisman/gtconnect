require 'test_helper'

class MarketingContactsControllerTest < ActionController::TestCase
  setup do
    @marketing_contact = marketing_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marketing_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marketing_contact" do
    assert_difference('MarketingContact.count') do
      post :create, :marketing_contact => @marketing_contact.attributes
    end

    assert_redirected_to marketing_contact_path(assigns(:marketing_contact))
  end

  test "should show marketing_contact" do
    get :show, :id => @marketing_contact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @marketing_contact.to_param
    assert_response :success
  end

  test "should update marketing_contact" do
    put :update, :id => @marketing_contact.to_param, :marketing_contact => @marketing_contact.attributes
    assert_redirected_to marketing_contact_path(assigns(:marketing_contact))
  end

  test "should destroy marketing_contact" do
    assert_difference('MarketingContact.count', -1) do
      delete :destroy, :id => @marketing_contact.to_param
    end

    assert_redirected_to marketing_contacts_path
  end
end
