require "application_system_test_case"

class AllotmentsTest < ApplicationSystemTestCase
  setup do
    @allotment = allotments(:one)
  end

  test "visiting the index" do
    visit allotments_url
    assert_selector "h1", text: "Allotments"
  end

  test "creating a Allotment" do
    visit allotments_url
    click_on "New Allotment"

    fill_in "Name", with: @allotment.name
    fill_in "Number", with: @allotment.number
    fill_in "Value", with: @allotment.value
    fill_in "Venture", with: @allotment.venture_id
    click_on "Create Allotment"

    assert_text "Allotment was successfully created"
    click_on "Back"
  end

  test "updating a Allotment" do
    visit allotments_url
    click_on "Edit", match: :first

    fill_in "Name", with: @allotment.name
    fill_in "Number", with: @allotment.number
    fill_in "Value", with: @allotment.value
    fill_in "Venture", with: @allotment.venture_id
    click_on "Update Allotment"

    assert_text "Allotment was successfully updated"
    click_on "Back"
  end

  test "destroying a Allotment" do
    visit allotments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Allotment was successfully destroyed"
  end
end
