require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get workinprogress" do
    get static_pages_workinprogress_url
    assert_response :success
  end

end
