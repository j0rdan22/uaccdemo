json.extract! account, :id, :account_number, :first_name, :last_name, :ssn, :account_status_id, :created_at, :updated_at
json.url account_url(account, format: :json)
