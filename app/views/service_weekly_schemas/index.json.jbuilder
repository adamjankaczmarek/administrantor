json.array!(@service_weekly_schemas) do |service_weekly_schema|
  json.extract! service_weekly_schema, :sunday_id, :monday_id, :tuesday_id, :wednesday_id, :thursday_id, :friday_id, :saturday_id, :name
  json.url service_weekly_schema_url(service_weekly_schema, format: :json)
end
