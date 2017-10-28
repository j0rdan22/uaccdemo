json.extract! user_employee, :id, :user_name, :password, :employee_id, :created_at, :updated_at
json.url user_employee_url(user_employee, format: :json)
