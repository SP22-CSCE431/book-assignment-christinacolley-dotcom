require "application_system_test_case"

class CollectiomsTest < ApplicationSystemTestCase
  setup do
    @collectiom = collectioms(:one)
  end

  test "visiting the index" do
    visit collectioms_url
    assert_selector "h1", text: "Collectioms"
  end

  test "creating a Collectiom" do
    visit collectioms_url
    click_on "New Collectiom"

    fill_in "Title", with: @collectiom.title
    click_on "Create Collectiom"

    assert_text "Collectiom was successfully created"
    click_on "Back"
  end

  test "updating a Collectiom" do
    visit collectioms_url
    click_on "Edit", match: :first

    fill_in "Title", with: @collectiom.title
    click_on "Update Collectiom"

    assert_text "Collectiom was successfully updated"
    click_on "Back"
  end

  test "destroying a Collectiom" do
    visit collectioms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collectiom was successfully destroyed"
  end
end
