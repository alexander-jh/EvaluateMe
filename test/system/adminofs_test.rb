require "application_system_test_case"

class AdminofsTest < ApplicationSystemTestCase
  setup do
    @adminof = adminofs(:one)
  end

  test "visiting the index" do
    visit adminofs_url
    assert_selector "h1", text: "Adminofs"
  end

  test "creating a Adminof" do
    visit adminofs_url
    click_on "New Adminof"

    fill_in "Course", with: @adminof.course_id
    fill_in "User", with: @adminof.user_id
    click_on "Create Adminof"

    assert_text "Adminof was successfully created"
    click_on "Back"
  end

  test "updating a Adminof" do
    visit adminofs_url
    click_on "Edit", match: :first

    fill_in "Course", with: @adminof.course_id
    fill_in "User", with: @adminof.user_id
    click_on "Update Adminof"

    assert_text "Adminof was successfully updated"
    click_on "Back"
  end

  test "destroying a Adminof" do
    visit adminofs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adminof was successfully destroyed"
  end
end
