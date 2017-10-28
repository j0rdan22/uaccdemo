json.extract! matter, :id, :reported_date, :end_date, :added_date, :added_by, :modified_date, :modified_by, :comment, :matter_type_id, :matter_status_id, :matter_source_id, :matter_category_id, :resolution_code_id, :urgency_level_id, :department_id, :created_at, :updated_at
json.url matter_url(matter, format: :json)
