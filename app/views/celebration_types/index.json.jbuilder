json.array!(@celebration_types) do |celebration_type|
  json.extract! celebration_type, :name
  json.url celebration_type_url(celebration_type, format: :json)
end
