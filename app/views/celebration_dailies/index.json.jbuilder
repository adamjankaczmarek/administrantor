json.array!(@celebration_dailies) do |celebration_daily|
  json.extract! celebration_daily, :name, :hour, :celebration_type_id
  json.url celebration_daily_url(celebration_daily, format: :json)
end
