require 'test_helper'

class MatterUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matter_update = matter_updates(:one)
  end

  test "should get index" do
    get matter_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_matter_update_url
    assert_response :success
  end

  test "should create matter_update" do
    assert_difference('MatterUpdate.count') do
      post matter_updates_url, params: { matter_update: { matter_id: @matter_update.matter_id, update: @matter_update.update } }
    end

    assert_redirected_to matter_update_url(MatterUpdate.last)
  end

  test "should show matter_update" do
    get matter_update_url(@matter_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_matter_update_url(@matter_update)
    assert_response :success
  end

  test "should update matter_update" do
    patch matter_update_url(@matter_update), params: { matter_update: { matter_id: @matter_update.matter_id, update: @matter_update.update } }
    assert_redirected_to matter_update_url(@matter_update)
  end

  test "should destroy matter_update" do
    assert_difference('MatterUpdate.count', -1) do
      delete matter_update_url(@matter_update)
    end

    assert_redirected_to matter_updates_url
  end
end
