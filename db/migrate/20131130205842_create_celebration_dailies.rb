class CreateCelebrationDailies < ActiveRecord::Migration
  def change
    create_table :celebration_dailies do |t|
      t.string :name
      t.float :hour
      t.references :celebration_type, index: true
      t.references :celebration_daily_schema

      t.timestamps
    end
  end
end
