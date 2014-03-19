class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :year
      t.integer :week_no

      t.timestamps
    end
  end
end
