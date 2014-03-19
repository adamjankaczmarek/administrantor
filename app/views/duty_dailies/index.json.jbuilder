json.array!(@duty_dailies) do |duty_daily|
  json.extract! duty_daily, :duty_daily_schema_id, :service_daily_id
  json.url duty_daily_url(duty_daily, format: :json)
end
