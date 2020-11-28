require 'test_helper'

class IncoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incourse = incourses(:one)
  end

  test "should get index" do
    get incourses_url
    assert_response :success
  end

  test "should get new" do
    get new_incourse_url
    assert_response :success
  end

  test "should create incourse" do
    assert_difference('Incourse.count') do
      post incourses_url, params: { incourse: { course_id: @incourse.course_id, user_id: @incourse.user_id } }
    end

    assert_redirected_to incourse_url(Incourse.last)
  end

  test "should show incourse" do
    get incourse_url(@incourse)
    assert_response :success
  end

  test "should get edit" do
    get edit_incourse_url(@incourse)
    assert_response :success
  end

  test "should update incourse" do
    patch incourse_url(@incourse), params: { incourse: { course_id: @incourse.course_id, user_id: @incourse.user_id } }
    assert_redirected_to incourse_url(@incourse)
  end

  test "should destroy incourse" do
    assert_difference('Incourse.count', -1) do
      delete incourse_url(@incourse)
    end

    assert_redirected_to incourses_url
  end
end
