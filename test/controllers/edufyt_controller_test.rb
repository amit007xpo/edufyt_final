require 'test_helper'

class EdufytControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get edufyt_index_url
    assert_response :success
  end

end
