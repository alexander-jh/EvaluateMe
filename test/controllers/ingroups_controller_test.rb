require 'test_helper'

class IngroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingroup = ingroups(:one)
  end

  test "should get index" do
    get ingroups_url
    assert_response :success
  end

  test "should get new" do
    get new_ingroup_url
    assert_response :success
  end

  test "should create ingroup" do
    assert_difference('Ingroup.count') do
      post ingroups_url, params: { ingroup: { group: @ingroup.group, references: @ingroup.references, user_id: @ingroup.user_id } }
    end

    assert_redirected_to ingroup_url(Ingroup.last)
  end

  test "should show ingroup" do
    get ingroup_url(@ingroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingroup_url(@ingroup)
    assert_response :success
  end

  test "should update ingroup" do
    patch ingroup_url(@ingroup), params: { ingroup: { group: @ingroup.group, references: @ingroup.references, user_id: @ingroup.user_id } }
    assert_redirected_to ingroup_url(@ingroup)
  end

  test "should destroy ingroup" do
    assert_difference('Ingroup.count', -1) do
      delete ingroup_url(@ingroup)
    end

    assert_redirected_to ingroups_url
  end
end
