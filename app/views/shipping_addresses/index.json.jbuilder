json.array!(@shipping_addresses) do |shipping_address|
  json.extract! shipping_address, :id, :first_name, :last_name, :address_1, :address_2, :city, :state, :country, :zip, :email, :phone, :customer_id
  json.url shipping_address_url(shipping_address, format: :json)
end
