require "test_helper"

class SignInsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sign_ins_index_url
    assert_response :success
  end
end
