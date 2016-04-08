json.array!(@ingredient_instances) do |ingredient_instance|
  json.extract! ingredient_instance, :id, :quantity, :unit, :stock_id, :stock_id
  json.url ingredient_instance_url(ingredient_instance, format: :json)
end
