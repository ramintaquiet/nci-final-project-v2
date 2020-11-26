require "application_system_test_case"

class GendersTest < ApplicationSystemTestCase
  setup do
    @gender = genders(:one)
  end

  test "visiting the index" do
    visit genders_url
    assert_selector "h1", text: "Genders"
  end

  test "creating a Gender" do
    visit genders_url
    click_on "New Gender"

    fill_in "Name", with: @gender.name
    click_on "Create Gender"

    assert_text "Gender was successfully created"
    click_on "Back"
  end

  test "updating a Gender" do
    visit genders_url
    click_on "Edit", match: :first

    fill_in "Name", with: @gender.name
    click_on "Update Gender"

    assert_text "Gender was successfully updated"
    click_on "Back"
  end

  test "destroying a Gender" do
    visit genders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gender was successfully destroyed"
  end
end
