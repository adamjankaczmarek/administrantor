class AddServiceWeeklySchemaToDutyWeeklySchema < ActiveRecord::Migration
  def change
    add_reference :duty_weekly_schemas, :service_weekly_schema, index: true
  end
end
