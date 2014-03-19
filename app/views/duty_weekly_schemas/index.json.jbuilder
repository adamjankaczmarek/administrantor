json.array!(@duty_weekly_schemas) do |duty_weekly_schema|
  json.extract! duty_weekly_schema, :sunday_id, :monday_id, :tuesday_id, :wednesday_id, :thursday_id, :friday_id, :saturday_id, :name
  json.url duty_weekly_schema_url(duty_weekly_schema, format: :json)
end
