require "application_system_test_case"

class VenturesTest < ApplicationSystemTestCase
  setup do
    @venture = ventures(:one)
  end

  test "visiting the index" do
    visit ventures_url
    assert_selector "h1", text: "Ventures"
  end

  test "creating a Venture" do
    visit ventures_url
    click_on "New Venture"

    fill_in "City", with: @venture.city
    fill_in "Name", with: @venture.name
    fill_in "Neighborhood", with: @venture.neighborhood
    fill_in "Readjust", with: @venture.readjust
    fill_in "Street", with: @venture.street
    click_on "Create Venture"

    assert_text "Venture was successfully created"
    click_on "Back"
  end

  test "updating a Venture" do
    visit ventures_url
    click_on "Edit", match: :first

    fill_in "City", with: @venture.city
    fill_in "Name", with: @venture.name
    fill_in "Neighborhood", with: @venture.neighborhood
    fill_in "Readjust", with: @venture.readjust
    fill_in "Street", with: @venture.street
    click_on "Update Venture"

    assert_text "Venture was successfully updated"
    click_on "Back"
  end

  test "destroying a Venture" do
    visit ventures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Venture was successfully destroyed"
  end
end
