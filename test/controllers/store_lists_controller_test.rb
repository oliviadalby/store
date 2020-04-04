require 'test_helper'

class StoreListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_list = store_lists(:one)
  end

  test "should get index" do
    get store_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_store_list_url
    assert_response :success
  end

  test "should create store_list" do
    assert_difference('StoreList.count') do
      post store_lists_url, params: { store_list: { employees: @store_list.employees, name: @store_list.name, open: @store_list.open } }
    end

    assert_redirected_to store_list_url(StoreList.last)
  end

  test "should show store_list" do
    get store_list_url(@store_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_list_url(@store_list)
    assert_response :success
  end

  test "should update store_list" do
    patch store_list_url(@store_list), params: { store_list: { employees: @store_list.employees, name: @store_list.name, open: @store_list.open } }
    assert_redirected_to store_list_url(@store_list)
  end

  test "should destroy store_list" do
    assert_difference('StoreList.count', -1) do
      delete store_list_url(@store_list)
    end

    assert_redirected_to store_lists_url
  end
end
