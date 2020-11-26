require 'test_helper'

class PetprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @petprofile = petprofiles(:one)
  end

  test "should get index" do
    get petprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_petprofile_url
    assert_response :success
  end

  test "should create petprofile" do
    assert_difference('Petprofile.count') do
      post petprofiles_url, params: { petprofile: { DOB: @petprofile.DOB, about: @petprofile.about, available: @petprofile.available, breed: @petprofile.breed, category_id: @petprofile.category_id, gender_id: @petprofile.gender_id, microchipped: @petprofile.microchipped, name: @petprofile.name, pedigree: @petprofile.pedigree, user_id: @petprofile.user_id, vaccinated: @petprofile.vaccinated } }
    end

    assert_redirected_to petprofile_url(Petprofile.last)
  end

  test "should show petprofile" do
    get petprofile_url(@petprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_petprofile_url(@petprofile)
    assert_response :success
  end

  test "should update petprofile" do
    patch petprofile_url(@petprofile), params: { petprofile: { DOB: @petprofile.DOB, about: @petprofile.about, available: @petprofile.available, breed: @petprofile.breed, category_id: @petprofile.category_id, gender_id: @petprofile.gender_id, microchipped: @petprofile.microchipped, name: @petprofile.name, pedigree: @petprofile.pedigree, user_id: @petprofile.user_id, vaccinated: @petprofile.vaccinated } }
    assert_redirected_to petprofile_url(@petprofile)
  end

  test "should destroy petprofile" do
    assert_difference('Petprofile.count', -1) do
      delete petprofile_url(@petprofile)
    end

    assert_redirected_to petprofiles_url
  end
end
