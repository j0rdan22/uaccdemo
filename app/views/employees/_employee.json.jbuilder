json.extract! employee, :id, :first_name, :last_name, :email, :phone_number, :added_date, :added_by, :modified_date, :modified_by, :employee_status_id, :location_id, :employee_type_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
