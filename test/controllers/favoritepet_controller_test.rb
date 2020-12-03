require 'test_helper'

class FavoritepetControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get favoritepet_update_url
    assert_response :success
  end

end
