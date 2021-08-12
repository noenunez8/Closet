json.extract! product, :id, :detail, :account_id, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
