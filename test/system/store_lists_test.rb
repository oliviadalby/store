require "application_system_test_case"

class StoreListsTest < ApplicationSystemTestCase
  setup do
    @store_list = store_lists(:one)
  end

  test "visiting the index" do
    visit store_lists_url
    assert_selector "h1", text: "Store Lists"
  end

  test "creating a Store list" do
    visit store_lists_url
    click_on "New Store List"

    fill_in "Employees", with: @store_list.employees
    fill_in "Name", with: @store_list.name
    check "Open" if @store_list.open
    click_on "Create Store list"

    assert_text "Store list was successfully created"
    click_on "Back"
  end

  test "updating a Store list" do
    visit store_lists_url
    click_on "Edit", match: :first

    fill_in "Employees", with: @store_list.employees
    fill_in "Name", with: @store_list.name
    check "Open" if @store_list.open
    click_on "Update Store list"

    assert_text "Store list was successfully updated"
    click_on "Back"
  end

  test "destroying a Store list" do
    visit store_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store list was successfully destroyed"
  end
end
