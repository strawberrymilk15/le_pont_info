require "test_helper"

class SignUpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sign_ups_index_url
    assert_response :success
  end
end
