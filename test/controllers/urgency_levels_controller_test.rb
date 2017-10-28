require 'test_helper'

class UrgencyLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @urgency_level = urgency_levels(:one)
  end

  test "should get index" do
    get urgency_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_urgency_level_url
    assert_response :success
  end

  test "should create urgency_level" do
    assert_difference('UrgencyLevel.count') do
      post urgency_levels_url, params: { urgency_level: { level_description: @urgency_level.level_description } }
    end

    assert_redirected_to urgency_level_url(UrgencyLevel.last)
  end

  test "should show urgency_level" do
    get urgency_level_url(@urgency_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_urgency_level_url(@urgency_level)
    assert_response :success
  end

  test "should update urgency_level" do
    patch urgency_level_url(@urgency_level), params: { urgency_level: { level_description: @urgency_level.level_description } }
    assert_redirected_to urgency_level_url(@urgency_level)
  end

  test "should destroy urgency_level" do
    assert_difference('UrgencyLevel.count', -1) do
      delete urgency_level_url(@urgency_level)
    end

    assert_redirected_to urgency_levels_url
  end
end
