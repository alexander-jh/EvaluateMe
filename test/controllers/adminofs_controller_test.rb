require 'test_helper'

class AdminofsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adminof = adminofs(:one)
  end

  test "should get index" do
    get adminofs_url
    assert_response :success
  end

  test "should get new" do
    get new_adminof_url
    assert_response :success
  end

  test "should create adminof" do
    assert_difference('Adminof.count') do
      post adminofs_url, params: { adminof: { course_id: @adminof.course_id, user_id: @adminof.user_id } }
    end

    assert_redirected_to adminof_url(Adminof.last)
  end

  test "should show adminof" do
    get adminof_url(@adminof)
    assert_response :success
  end

  test "should get edit" do
    get edit_adminof_url(@adminof)
    assert_response :success
  end

  test "should update adminof" do
    patch adminof_url(@adminof), params: { adminof: { course_id: @adminof.course_id, user_id: @adminof.user_id } }
    assert_redirected_to adminof_url(@adminof)
  end

  test "should destroy adminof" do
    assert_difference('Adminof.count', -1) do
      delete adminof_url(@adminof)
    end

    assert_redirected_to adminofs_url
  end
end
