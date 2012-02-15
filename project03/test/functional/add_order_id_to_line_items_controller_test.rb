require 'test_helper'

class AddOrderIdToLineItemsControllerTest < ActionController::TestCase
  setup do
    @add_order_id_to_line_item = add_order_id_to_line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_order_id_to_line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_order_id_to_line_item" do
    assert_difference('AddOrderIdToLineItem.count') do
      post :create, add_order_id_to_line_item: @add_order_id_to_line_item.attributes
    end

    assert_redirected_to add_order_id_to_line_item_path(assigns(:add_order_id_to_line_item))
  end

  test "should show add_order_id_to_line_item" do
    get :show, id: @add_order_id_to_line_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_order_id_to_line_item
    assert_response :success
  end

  test "should update add_order_id_to_line_item" do
    put :update, id: @add_order_id_to_line_item, add_order_id_to_line_item: @add_order_id_to_line_item.attributes
    assert_redirected_to add_order_id_to_line_item_path(assigns(:add_order_id_to_line_item))
  end

  test "should destroy add_order_id_to_line_item" do
    assert_difference('AddOrderIdToLineItem.count', -1) do
      delete :destroy, id: @add_order_id_to_line_item
    end

    assert_redirected_to add_order_id_to_line_items_path
  end
end
