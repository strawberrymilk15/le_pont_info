require "test_helper"

class ShopHomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_homes_index_url
    assert_response :success
  end
end
