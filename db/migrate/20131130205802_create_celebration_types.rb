class CreateCelebrationTypes < ActiveRecord::Migration
  def change
    create_table :celebration_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
