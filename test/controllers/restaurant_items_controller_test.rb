require 'test_helper'

class RestaurantItemsControllerTest < ActionController::TestCase
  setup do
    @restaurant_item = restaurant_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_item" do
    assert_difference('RestaurantItem.count') do
      post :create, restaurant_item: { name: @restaurant_item.name, short_description: @restaurant_item.short_description }
    end

    assert_redirected_to restaurant_item_path(assigns(:restaurant_item))
  end

  test "should show restaurant_item" do
    get :show, id: @restaurant_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_item
    assert_response :success
  end

  test "should update restaurant_item" do
    patch :update, id: @restaurant_item, restaurant_item: { name: @restaurant_item.name, short_description: @restaurant_item.short_description }
    assert_redirected_to restaurant_item_path(assigns(:restaurant_item))
  end

  test "should destroy restaurant_item" do
    assert_difference('RestaurantItem.count', -1) do
      delete :destroy, id: @restaurant_item
    end

    assert_redirected_to restaurant_items_path
  end
end
