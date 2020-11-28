require "application_system_test_case"

class IncoursesTest < ApplicationSystemTestCase
  setup do
    @incourse = incourses(:one)
  end

  test "visiting the index" do
    visit incourses_url
    assert_selector "h1", text: "Incourses"
  end

  test "creating a Incourse" do
    visit incourses_url
    click_on "New Incourse"

    fill_in "Course", with: @incourse.course_id
    fill_in "User", with: @incourse.user_id
    click_on "Create Incourse"

    assert_text "Incourse was successfully created"
    click_on "Back"
  end

  test "updating a Incourse" do
    visit incourses_url
    click_on "Edit", match: :first

    fill_in "Course", with: @incourse.course_id
    fill_in "User", with: @incourse.user_id
    click_on "Update Incourse"

    assert_text "Incourse was successfully updated"
    click_on "Back"
  end

  test "destroying a Incourse" do
    visit incourses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incourse was successfully destroyed"
  end
end
