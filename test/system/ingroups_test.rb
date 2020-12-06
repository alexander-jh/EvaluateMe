require "application_system_test_case"

class IngroupsTest < ApplicationSystemTestCase
  setup do
    @ingroup = ingroups(:one)
  end

  test "visiting the index" do
    visit ingroups_url
    assert_selector "h1", text: "Ingroups"
  end

  test "creating a Ingroup" do
    visit ingroups_url
    click_on "New Ingroup"

    fill_in "Group", with: @ingroup.group
    fill_in "References", with: @ingroup.references
    fill_in "User", with: @ingroup.user_id
    click_on "Create Ingroup"

    assert_text "Ingroup was successfully created"
    click_on "Back"
  end

  test "updating a Ingroup" do
    visit ingroups_url
    click_on "Edit", match: :first

    fill_in "Group", with: @ingroup.group
    fill_in "References", with: @ingroup.references
    fill_in "User", with: @ingroup.user_id
    click_on "Update Ingroup"

    assert_text "Ingroup was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingroup" do
    visit ingroups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingroup was successfully destroyed"
  end
end
