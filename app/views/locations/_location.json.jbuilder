json.extract! location, :id, :description, :address, :city, :zip_code, :state_id, :created_at, :updated_at
json.url location_url(location, format: :json)
