class CreateWeeklyPlans < ActiveRecord::Migration
  def change
    create_table :weekly_plans do |t|
      t.string :name
      t.date :week_start
      t.date :week_end
      t.references :duty_weekly_schema, index: true

      t.timestamps
    end
  end
end
