json.extract! party, :id, :first_name, :last_name, :address, :city, :state_id, :zip_code, :phone_number, :email, :last_four_ssn, :added_date, :added_by, :modified_date, :modified_by, :party_type_id, :created_at, :updated_at
json.url party_url(party, format: :json)
