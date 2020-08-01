require "application_system_test_case"

class PremiamsTest < ApplicationSystemTestCase
  setup do
    @premiam = premiams(:one)
  end

  test "visiting the index" do
    visit premiams_url
    assert_selector "h1", text: "Premiams"
  end

  test "creating a Premiam" do
    visit premiams_url
    click_on "New Premiam"

    fill_in "Age", with: @premiam.age
    fill_in "Company", with: @premiam.company
    fill_in "Fee", with: @premiam.fee
    fill_in "Name", with: @premiam.name
    fill_in "Plan", with: @premiam.plan
    fill_in "Sex", with: @premiam.sex
    click_on "Create Premiam"

    assert_text "Premiam was successfully created"
    click_on "Back"
  end

  test "updating a Premiam" do
    visit premiams_url
    click_on "Edit", match: :first

    fill_in "Age", with: @premiam.age
    fill_in "Company", with: @premiam.company
    fill_in "Fee", with: @premiam.fee
    fill_in "Name", with: @premiam.name
    fill_in "Plan", with: @premiam.plan
    fill_in "Sex", with: @premiam.sex
    click_on "Update Premiam"

    assert_text "Premiam was successfully updated"
    click_on "Back"
  end

  test "destroying a Premiam" do
    visit premiams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Premiam was successfully destroyed"
  end
end
