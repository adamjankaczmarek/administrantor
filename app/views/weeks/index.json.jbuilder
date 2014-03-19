json.array!(@weeks) do |week|
  json.extract! week, :year, :week_no
  json.url week_url(week, format: :json)
end
