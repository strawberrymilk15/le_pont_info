require "test_helper"

class LawsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get laws_index_url
    assert_response :success
  end
end
