class WeeklyPlan < ActiveRecord::Base
  belongs_to :celebration_weekly_schema
  belongs_to :service_weekly_schema
  belongs_to :duty_weekly_schema
end
