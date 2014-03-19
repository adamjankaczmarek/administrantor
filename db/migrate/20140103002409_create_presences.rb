class CreatePresences < ActiveRecord::Migration
  def change
    create_table :presences do |t|
      t.references :altar_boy, index: true
      t.references :service_daily, index: true
      t.integer :day
      t.references :week, index: true

      t.timestamps
    end
  end
end
