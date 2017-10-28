require 'test_helper'

class MattersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matter = matters(:one)
  end

  test "should get index" do
    get matters_url
    assert_response :success
  end

  test "should get new" do
    get new_matter_url
    assert_response :success
  end

  test "should create matter" do
    assert_difference('Matter.count') do
      post matters_url, params: { matter: { added_by: @matter.added_by, added_date: @matter.added_date, comment: @matter.comment, department_id: @matter.department_id, end_date: @matter.end_date, matter_category_id: @matter.matter_category_id, matter_source_id: @matter.matter_source_id, matter_status_id: @matter.matter_status_id, matter_type_id: @matter.matter_type_id, modified_by: @matter.modified_by, modified_date: @matter.modified_date, reported_date: @matter.reported_date, resolution_code_id: @matter.resolution_code_id, urgency_level_id: @matter.urgency_level_id } }
    end

    assert_redirected_to matter_url(Matter.last)
  end

  test "should show matter" do
    get matter_url(@matter)
    assert_response :success
  end

  test "should get edit" do
    get edit_matter_url(@matter)
    assert_response :success
  end

  test "should update matter" do
    patch matter_url(@matter), params: { matter: { added_by: @matter.added_by, added_date: @matter.added_date, comment: @matter.comment, department_id: @matter.department_id, end_date: @matter.end_date, matter_category_id: @matter.matter_category_id, matter_source_id: @matter.matter_source_id, matter_status_id: @matter.matter_status_id, matter_type_id: @matter.matter_type_id, modified_by: @matter.modified_by, modified_date: @matter.modified_date, reported_date: @matter.reported_date, resolution_code_id: @matter.resolution_code_id, urgency_level_id: @matter.urgency_level_id } }
    assert_redirected_to matter_url(@matter)
  end

  test "should destroy matter" do
    assert_difference('Matter.count', -1) do
      delete matter_url(@matter)
    end

    assert_redirected_to matters_url
  end
end
