json.array!(@altar_boys) do |altar_boy|
  json.extract! altar_boy, :name
  json.url altar_boy_url(altar_boy, format: :json)
end
