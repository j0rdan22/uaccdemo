json.extract! employee_status, :id, :status_description, :created_at, :updated_at
json.url employee_status_url(employee_status, format: :json)
