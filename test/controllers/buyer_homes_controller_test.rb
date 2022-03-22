require "test_helper"

class BuyerHomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buyer_homes_index_url
    assert_response :success
  end
end
