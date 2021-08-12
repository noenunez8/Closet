json.extract! account, :id, :name, :phone_number, :dni, :created_at, :updated_at
json.url account_url(account, format: :json)
