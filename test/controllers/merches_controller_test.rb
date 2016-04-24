require 'test_helper'

class MerchesControllerTest < ActionController::TestCase
  setup do
    @merch = merches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:merches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create merch" do
    assert_difference('Merch.count') do
      post :create, merch: { item: @merch.item, price: @merch.price, size: @merch.size }
    end

    assert_redirected_to merch_path(assigns(:merch))
  end

  test "should show merch" do
    get :show, id: @merch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @merch
    assert_response :success
  end

  test "should update merch" do
    patch :update, id: @merch, merch: { item: @merch.item, price: @merch.price, size: @merch.size }
    assert_redirected_to merch_path(assigns(:merch))
  end

  test "should destroy merch" do
    assert_difference('Merch.count', -1) do
      delete :destroy, id: @merch
    end

    assert_redirected_to merches_path
  end
end
