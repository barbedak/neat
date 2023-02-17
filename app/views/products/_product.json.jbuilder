json.extract! product, :id, :name, :series_id, :special_wash, :created_at, :updated_at
json.url product_url(product, format: :json)
