require "application_system_test_case"

class PetprofilesTest < ApplicationSystemTestCase
  setup do
    @petprofile = petprofiles(:one)
  end

  test "visiting the index" do
    visit petprofiles_url
    assert_selector "h1", text: "Petprofiles"
  end

  test "creating a Petprofile" do
    visit petprofiles_url
    click_on "New Petprofile"

    fill_in "Dob", with: @petprofile.DOB
    fill_in "About", with: @petprofile.about
    check "Available" if @petprofile.available
    fill_in "Breed", with: @petprofile.breed
    fill_in "Category", with: @petprofile.category_id
    fill_in "Gender", with: @petprofile.gender_id
    check "Microchipped" if @petprofile.microchipped
    fill_in "Name", with: @petprofile.name
    check "Pedigree" if @petprofile.pedigree
    fill_in "User", with: @petprofile.user_id
    check "Vaccinated" if @petprofile.vaccinated
    click_on "Create Petprofile"

    assert_text "Petprofile was successfully created"
    click_on "Back"
  end

  test "updating a Petprofile" do
    visit petprofiles_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @petprofile.DOB
    fill_in "About", with: @petprofile.about
    check "Available" if @petprofile.available
    fill_in "Breed", with: @petprofile.breed
    fill_in "Category", with: @petprofile.category_id
    fill_in "Gender", with: @petprofile.gender_id
    check "Microchipped" if @petprofile.microchipped
    fill_in "Name", with: @petprofile.name
    check "Pedigree" if @petprofile.pedigree
    fill_in "User", with: @petprofile.user_id
    check "Vaccinated" if @petprofile.vaccinated
    click_on "Update Petprofile"

    assert_text "Petprofile was successfully updated"
    click_on "Back"
  end

  test "destroying a Petprofile" do
    visit petprofiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Petprofile was successfully destroyed"
  end
end
