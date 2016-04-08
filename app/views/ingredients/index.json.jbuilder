json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :quantity, :unit, :stock_type_id, :stock_type_id
  json.url ingredient_url(ingredient, format: :json)
end
