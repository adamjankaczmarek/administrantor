json.array!(@tariffs) do |tariff|
  json.extract! tariff, :name
  json.url tariff_url(tariff, format: :json)
end
