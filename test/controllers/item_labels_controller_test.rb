require 'test_helper'

class ItemLabelsControllerTest < ActionController::TestCase
  setup do
    @item_label = item_labels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_labels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_label" do
    assert_difference('ItemLabel.count') do
      post :create, item_label: { name: @item_label.name }
    end

    assert_redirected_to item_label_path(assigns(:item_label))
  end

  test "should show item_label" do
    get :show, id: @item_label
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_label
    assert_response :success
  end

  test "should update item_label" do
    patch :update, id: @item_label, item_label: { name: @item_label.name }
    assert_redirected_to item_label_path(assigns(:item_label))
  end

  test "should destroy item_label" do
    assert_difference('ItemLabel.count', -1) do
      delete :destroy, id: @item_label
    end

    assert_redirected_to item_labels_path
  end
end
