require 'test_helper'

class MatterStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matter_status = matter_statuses(:one)
  end

  test "should get index" do
    get matter_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_matter_status_url
    assert_response :success
  end

  test "should create matter_status" do
    assert_difference('MatterStatus.count') do
      post matter_statuses_url, params: { matter_status: { status_description: @matter_status.status_description } }
    end

    assert_redirected_to matter_status_url(MatterStatus.last)
  end

  test "should show matter_status" do
    get matter_status_url(@matter_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_matter_status_url(@matter_status)
    assert_response :success
  end

  test "should update matter_status" do
    patch matter_status_url(@matter_status), params: { matter_status: { status_description: @matter_status.status_description } }
    assert_redirected_to matter_status_url(@matter_status)
  end

  test "should destroy matter_status" do
    assert_difference('MatterStatus.count', -1) do
      delete matter_status_url(@matter_status)
    end

    assert_redirected_to matter_statuses_url
  end
end
