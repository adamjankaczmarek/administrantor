json.array!(@weekly_plans) do |weekly_plan|
  json.extract! weekly_plan, :name, :celebration_id, :service_id, :duty_id
  json.url weekly_plan_url(weekly_plan, format: :json)
end
