class CreatePresences < ActiveRecord::Migration
  def change
    create_table :presences do |t|
      t.references :altar_boy, index: true
      t.date :date
      t.references :celebration, index: true

      t.timestamps
    end
  end
end
