json.array!(@weekly_plans) do |weekly_plan|
  json.extract! weekly_plan, :id, :name, :week_start, :week_end, :duty_weekly_schema_id
  json.url weekly_plan_url(weekly_plan, format: :json)
end
