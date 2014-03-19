json.array!(@presences) do |presence|
  json.extract! presence, :altar_boy_id, :service_daily_id, :day, :week_id
  json.url presence_url(presence, format: :json)
end
