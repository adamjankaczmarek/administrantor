json.array!(@service_dailies) do |service_daily|
  json.extract! service_daily, :type, :related_id, :cdscds_id, :sds_id
  json.url service_daily_url(service_daily, format: :json)
end
