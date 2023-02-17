require "application_system_test_case"

class WashingsTest < ApplicationSystemTestCase
  setup do
    @washing = washings(:one)
  end

  test "visiting the index" do
    visit washings_url
    assert_selector "h1", text: "Washings"
  end

  test "should create washing" do
    visit washings_url
    click_on "New washing"

    fill_in "Brew", with: @washing.brew_id
    fill_in "Checking", with: @washing.checking_id
    fill_in "End date", with: @washing.end_date
    fill_in "End time", with: @washing.end_time
    fill_in "Equipment", with: @washing.equipment_id
    fill_in "Glass checking", with: @washing.glass_checking_id
    fill_in "Start date", with: @washing.start_date
    fill_in "Start time", with: @washing.start_time
    fill_in "Washer", with: @washing.washer_id
    click_on "Create Washing"

    assert_text "Washing was successfully created"
    click_on "Back"
  end

  test "should update Washing" do
    visit washing_url(@washing)
    click_on "Edit this washing", match: :first

    fill_in "Brew", with: @washing.brew_id
    fill_in "Checking", with: @washing.checking_id
    fill_in "End date", with: @washing.end_date
    fill_in "End time", with: @washing.end_time
    fill_in "Equipment", with: @washing.equipment_id
    fill_in "Glass checking", with: @washing.glass_checking_id
    fill_in "Start date", with: @washing.start_date
    fill_in "Start time", with: @washing.start_time
    fill_in "Washer", with: @washing.washer_id
    click_on "Update Washing"

    assert_text "Washing was successfully updated"
    click_on "Back"
  end

  test "should destroy Washing" do
    visit washing_url(@washing)
    click_on "Destroy this washing", match: :first

    assert_text "Washing was successfully destroyed"
  end
end
