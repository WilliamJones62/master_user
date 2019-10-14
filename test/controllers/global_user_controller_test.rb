require 'test_helper'

class GlobalUserControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get global_user_edit_url
    assert_response :success
  end

  test "should get index" do
    get global_user_index_url
    assert_response :success
  end

end
