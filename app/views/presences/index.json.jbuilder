json.array!(@presences) do |presence|
  json.extract! presence, :id, :altar_boy_id, :date, :celebration_id
  json.url presence_url(presence, format: :json)
end
