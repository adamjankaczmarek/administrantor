class CreateDutyDailySchemas < ActiveRecord::Migration
  def change
    create_table :duty_daily_schemas do |t|
      t.string :name
      t.references :service_daily_schema, index: true

      t.timestamps
    end
  end
end
