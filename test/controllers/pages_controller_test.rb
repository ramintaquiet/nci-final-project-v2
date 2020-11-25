require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get info" do
    get pages_info_url
    assert_response :success
  end

  test "should get pets" do
    get pages_pets_url
    assert_response :success
  end

  test "should get favorite" do
    get pages_favorite_url
    assert_response :success
  end

end
