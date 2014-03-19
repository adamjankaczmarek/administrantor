class CreateServiceDailies < ActiveRecord::Migration
  def change
    create_table :service_dailies do |t|
      t.references :service_type
      t.references :related, index: true
      t.references :celebration_daily, index: true
      t.references :service_daily_schema, index: true

      t.timestamps
    end
  end
end
