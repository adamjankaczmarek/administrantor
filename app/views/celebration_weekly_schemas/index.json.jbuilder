json.array!(@celebration_weekly_schemas) do |celebration_weekly_schema|
  json.extract! celebration_weekly_schema, :name, :sunday_id, :monday_id, :tuesday_id, :wednesday_id, :thursday_id, :friday_id, :saturday_id
  json.url celebration_weekly_schema_url(celebration_weekly_schema, format: :json)
end
