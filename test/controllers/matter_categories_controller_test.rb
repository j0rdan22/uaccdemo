require 'test_helper'

class MatterCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @matter_category = matter_categories(:one)
  end

  test "should get index" do
    get matter_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_matter_category_url
    assert_response :success
  end

  test "should create matter_category" do
    assert_difference('MatterCategory.count') do
      post matter_categories_url, params: { matter_category: { category_description: @matter_category.category_description } }
    end

    assert_redirected_to matter_category_url(MatterCategory.last)
  end

  test "should show matter_category" do
    get matter_category_url(@matter_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_matter_category_url(@matter_category)
    assert_response :success
  end

  test "should update matter_category" do
    patch matter_category_url(@matter_category), params: { matter_category: { category_description: @matter_category.category_description } }
    assert_redirected_to matter_category_url(@matter_category)
  end

  test "should destroy matter_category" do
    assert_difference('MatterCategory.count', -1) do
      delete matter_category_url(@matter_category)
    end

    assert_redirected_to matter_categories_url
  end
end
