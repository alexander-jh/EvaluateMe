require 'test_helper'

class IncompletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incomplete = incompletes(:one)
  end

  test "should get index" do
    get incompletes_url
    assert_response :success
  end

  test "should get new" do
    get new_incomplete_url
    assert_response :success
  end

  test "should create incomplete" do
    assert_difference('Incomplete.count') do
      post incompletes_url, params: { incomplete: { project_id: @incomplete.project_id, user_id: @incomplete.user_id } }
    end

    assert_redirected_to incomplete_url(Incomplete.last)
  end

  test "should show incomplete" do
    get incomplete_url(@incomplete)
    assert_response :success
  end

  test "should get edit" do
    get edit_incomplete_url(@incomplete)
    assert_response :success
  end

  test "should update incomplete" do
    patch incomplete_url(@incomplete), params: { incomplete: { project_id: @incomplete.project_id, user_id: @incomplete.user_id } }
    assert_redirected_to incomplete_url(@incomplete)
  end

  test "should destroy incomplete" do
    assert_difference('Incomplete.count', -1) do
      delete incomplete_url(@incomplete)
    end

    assert_redirected_to incompletes_url
  end
end
