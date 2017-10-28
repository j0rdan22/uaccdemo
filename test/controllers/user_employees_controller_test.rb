require 'test_helper'

class UserEmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_employee = user_employees(:one)
  end

  test "should get index" do
    get user_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_user_employee_url
    assert_response :success
  end

  test "should create user_employee" do
    assert_difference('UserEmployee.count') do
      post user_employees_url, params: { user_employee: { employee_id: @user_employee.employee_id, password: @user_employee.password, user_name: @user_employee.user_name } }
    end

    assert_redirected_to user_employee_url(UserEmployee.last)
  end

  test "should show user_employee" do
    get user_employee_url(@user_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_employee_url(@user_employee)
    assert_response :success
  end

  test "should update user_employee" do
    patch user_employee_url(@user_employee), params: { user_employee: { employee_id: @user_employee.employee_id, password: @user_employee.password, user_name: @user_employee.user_name } }
    assert_redirected_to user_employee_url(@user_employee)
  end

  test "should destroy user_employee" do
    assert_difference('UserEmployee.count', -1) do
      delete user_employee_url(@user_employee)
    end

    assert_redirected_to user_employees_url
  end
end
