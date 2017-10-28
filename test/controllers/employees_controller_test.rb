require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { added_by: @employee.added_by, added_date: @employee.added_date, email: @employee.email, employee_status_id: @employee.employee_status_id, employee_type_id: @employee.employee_type_id, first_name: @employee.first_name, last_name: @employee.last_name, location_id: @employee.location_id, modified_by: @employee.modified_by, modified_date: @employee.modified_date, phone_number: @employee.phone_number } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { added_by: @employee.added_by, added_date: @employee.added_date, email: @employee.email, employee_status_id: @employee.employee_status_id, employee_type_id: @employee.employee_type_id, first_name: @employee.first_name, last_name: @employee.last_name, location_id: @employee.location_id, modified_by: @employee.modified_by, modified_date: @employee.modified_date, phone_number: @employee.phone_number } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
