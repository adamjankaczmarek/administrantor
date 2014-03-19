json.array!(@duty_daily_schemas) do |duty_daily_schema|
  json.extract! duty_daily_schema, :name, :service_daily_schema_id
  json.url duty_daily_schema_url(duty_daily_schema, format: :json)
end
