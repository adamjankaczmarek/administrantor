json.array!(@celebration_daily_schemas) do |celebration_daily_schema|
  json.extract! celebration_daily_schema, :name
  json.url celebration_daily_schema_url(celebration_daily_schema, format: :json)
end
