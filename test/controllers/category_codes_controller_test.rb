require 'test_helper'

class CategoryCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_code = category_codes(:one)
  end

  test "should get index" do
    get category_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_category_code_url
    assert_response :success
  end

  test "should create category_code" do
    assert_difference('CategoryCode.count') do
      post category_codes_url, params: { category_code: { code_description: @category_code.code_description } }
    end

    assert_redirected_to category_code_url(CategoryCode.last)
  end

  test "should show category_code" do
    get category_code_url(@category_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_code_url(@category_code)
    assert_response :success
  end

  test "should update category_code" do
    patch category_code_url(@category_code), params: { category_code: { code_description: @category_code.code_description } }
    assert_redirected_to category_code_url(@category_code)
  end

  test "should destroy category_code" do
    assert_difference('CategoryCode.count', -1) do
      delete category_code_url(@category_code)
    end

    assert_redirected_to category_codes_url
  end
end
