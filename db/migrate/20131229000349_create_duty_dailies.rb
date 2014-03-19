class CreateDutyDailies < ActiveRecord::Migration
  def change
    create_table :duty_dailies do |t|
      t.references :duty_daily_schema, index: true
      t.references :service_daily, index: true

      t.timestamps
    end
  end
end
