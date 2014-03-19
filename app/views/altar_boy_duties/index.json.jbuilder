json.array!(@altar_boy_duties) do |altar_boy_duty|
  json.extract! altar_boy_duty, :altar_boy_id, :duty_id
  json.url altar_boy_duty_url(altar_boy_duty, format: :json)
end
