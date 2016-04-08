json.array!(@order_items) do |order_item|
  json.extract! order_item, :id, :quantity, :packaging, :order_id, :stock_type_id, :unit, :stock_id
  json.url order_item_url(order_item, format: :json)
end
