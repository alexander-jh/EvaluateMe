require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get uman" do
    get pages_uman_url
    assert_response :success
  end

  test "should get gman" do
    get pages_gman_url
    assert_response :success
  end

end
