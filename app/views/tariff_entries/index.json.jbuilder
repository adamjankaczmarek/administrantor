json.array!(@tariff_entries) do |tariff_entry|
  json.extract! tariff_entry, :id, :points, :tariff_id, :celebration_type_id
  json.url tariff_entry_url(tariff_entry, format: :json)
end
