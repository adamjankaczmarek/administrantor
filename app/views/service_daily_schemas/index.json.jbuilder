json.array!(@service_daily_schemas) do |service_daily_schema|
  json.extract! service_daily_schema, :celebration_daily_schema, :name
  json.url service_daily_schema_url(service_daily_schema, format: :json)
end
