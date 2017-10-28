require 'test_helper'

class MatterCategoryCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matter_category_code = matter_category_codes(:one)
  end

  test "should get index" do
    get matter_category_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_matter_category_code_url
    assert_response :success
  end

  test "should create matter_category_code" do
    assert_difference('MatterCategoryCode.count') do
      post matter_category_codes_url, params: { matter_category_code: { category_code_id: @matter_category_code.category_code_id, matter_category_id: @matter_category_code.matter_category_id } }
    end

    assert_redirected_to matter_category_code_url(MatterCategoryCode.last)
  end

  test "should show matter_category_code" do
    get matter_category_code_url(@matter_category_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_matter_category_code_url(@matter_category_code)
    assert_response :success
  end

  test "should update matter_category_code" do
    patch matter_category_code_url(@matter_category_code), params: { matter_category_code: { category_code_id: @matter_category_code.category_code_id, matter_category_id: @matter_category_code.matter_category_id } }
    assert_redirected_to matter_category_code_url(@matter_category_code)
  end

  test "should destroy matter_category_code" do
    assert_difference('MatterCategoryCode.count', -1) do
      delete matter_category_code_url(@matter_category_code)
    end

    assert_redirected_to matter_category_codes_url
  end
end
