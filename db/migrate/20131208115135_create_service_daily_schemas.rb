class CreateServiceDailySchemas < ActiveRecord::Migration
  def change
    create_table :service_daily_schemas do |t|
      t.references :celebration_daily_schema, index: true
      t.string :name

      t.timestamps
    end
  end
end
