json.array!(@stocks) do |stock|
  json.extract! stock, :id, :initial_quantity, :purchase_date, :expiration_date, :purchase_price, :batch_number, :supplier_id, :stock_type_id, :unit
  json.url stock_url(stock, format: :json)
end
