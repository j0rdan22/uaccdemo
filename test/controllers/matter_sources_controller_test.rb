require 'test_helper'

class MatterSourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matter_source = matter_sources(:one)
  end

  test "should get index" do
    get matter_sources_url
    assert_response :success
  end

  test "should get new" do
    get new_matter_source_url
    assert_response :success
  end

  test "should create matter_source" do
    assert_difference('MatterSource.count') do
      post matter_sources_url, params: { matter_source: { source_description: @matter_source.source_description } }
    end

    assert_redirected_to matter_source_url(MatterSource.last)
  end

  test "should show matter_source" do
    get matter_source_url(@matter_source)
    assert_response :success
  end

  test "should get edit" do
    get edit_matter_source_url(@matter_source)
    assert_response :success
  end

  test "should update matter_source" do
    patch matter_source_url(@matter_source), params: { matter_source: { source_description: @matter_source.source_description } }
    assert_redirected_to matter_source_url(@matter_source)
  end

  test "should destroy matter_source" do
    assert_difference('MatterSource.count', -1) do
      delete matter_source_url(@matter_source)
    end

    assert_redirected_to matter_sources_url
  end
end
