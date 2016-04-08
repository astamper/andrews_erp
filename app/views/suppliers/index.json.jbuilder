json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :company_name
  json.url supplier_url(supplier, format: :json)
end
