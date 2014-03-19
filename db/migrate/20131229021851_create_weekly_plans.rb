class CreateWeeklyPlans < ActiveRecord::Migration
  def change
    create_table :weekly_plans do |t|
      t.string :name
      t.references :celebration, index: true
      t.references :service, index: true
      t.references :duty, index: true

      t.timestamps
    end
  end
end
