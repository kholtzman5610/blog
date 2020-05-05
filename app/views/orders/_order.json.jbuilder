json.extract! customer, :id, :product_name, :product_count, :created_at, :updated_at
json.url customer_url(customer, format: :json)
