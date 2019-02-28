require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Thomas Falcone"
  end 

  test "should get workinprogress" do
    get static_pages_workinprogress_url
    assert_response :success
    assert_select("title", "Be patient - #{@base_title}")
  end

  test "should get home" do 
    get home_url 
    assert_response :success
    assert_select("title", "#{@base_title}")
  end

  test "should get root" do 
    get root_url 
    assert_response :success
  end 

end
