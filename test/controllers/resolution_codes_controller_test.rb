require 'test_helper'

class ResolutionCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resolution_code = resolution_codes(:one)
  end

  test "should get index" do
    get resolution_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_resolution_code_url
    assert_response :success
  end

  test "should create resolution_code" do
    assert_difference('ResolutionCode.count') do
      post resolution_codes_url, params: { resolution_code: { resolution_code__description: @resolution_code.resolution_code__description } }
    end

    assert_redirected_to resolution_code_url(ResolutionCode.last)
  end

  test "should show resolution_code" do
    get resolution_code_url(@resolution_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_resolution_code_url(@resolution_code)
    assert_response :success
  end

  test "should update resolution_code" do
    patch resolution_code_url(@resolution_code), params: { resolution_code: { resolution_code__description: @resolution_code.resolution_code__description } }
    assert_redirected_to resolution_code_url(@resolution_code)
  end

  test "should destroy resolution_code" do
    assert_difference('ResolutionCode.count', -1) do
      delete resolution_code_url(@resolution_code)
    end

    assert_redirected_to resolution_codes_url
  end
end
