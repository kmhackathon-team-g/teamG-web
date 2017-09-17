require 'test_helper'

class AddminUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get addmin_user_index_url
    assert_response :success
  end

end
