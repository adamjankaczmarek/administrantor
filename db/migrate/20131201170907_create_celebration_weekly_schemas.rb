class CreateCelebrationWeeklySchemas < ActiveRecord::Migration
  def change
    create_table :celebration_weekly_schemas do |t|
      t.string :name
      t.references :sunday, index: true
      t.references :monday, index: true
      t.references :tuesday, index: true
      t.references :wednesday, index: true
      t.references :thursday, index: true
      t.references :friday, index: true
      t.references :saturday, index: true

      t.timestamps
    end
  end
end
