class CreateCelebrationDailySchemas < ActiveRecord::Migration
  def change
    create_table :celebration_daily_schemas do |t|
      t.string :name

      t.timestamps
    end
  end
end
