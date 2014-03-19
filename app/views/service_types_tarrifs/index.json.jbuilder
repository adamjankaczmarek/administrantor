json.array!(@service_types_tarrifs) do |service_types_tarrif|
  json.extract! service_types_tarrif, :service_type_id, :tarrif_id, :points
  json.url service_types_tarrif_url(service_types_tarrif, format: :json)
end
