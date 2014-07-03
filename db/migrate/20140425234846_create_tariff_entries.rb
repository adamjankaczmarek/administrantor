class CreateTariffEntries < ActiveRecord::Migration
  def change
    create_table :tariff_entries do |t|
      t.float :points
      t.references :tariff, index: true
      t.references :celebration_type, index: true

      t.timestamps
    end
  end
end
