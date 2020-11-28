require "application_system_test_case"

class IncompletesTest < ApplicationSystemTestCase
  setup do
    @incomplete = incompletes(:one)
  end

  test "visiting the index" do
    visit incompletes_url
    assert_selector "h1", text: "Incompletes"
  end

  test "creating a Incomplete" do
    visit incompletes_url
    click_on "New Incomplete"

    fill_in "Project", with: @incomplete.project_id
    fill_in "User", with: @incomplete.user_id
    click_on "Create Incomplete"

    assert_text "Incomplete was successfully created"
    click_on "Back"
  end

  test "updating a Incomplete" do
    visit incompletes_url
    click_on "Edit", match: :first

    fill_in "Project", with: @incomplete.project_id
    fill_in "User", with: @incomplete.user_id
    click_on "Update Incomplete"

    assert_text "Incomplete was successfully updated"
    click_on "Back"
  end

  test "destroying a Incomplete" do
    visit incompletes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incomplete was successfully destroyed"
  end
end
