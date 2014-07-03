class AddEntryTypeToTariffEntry < ActiveRecord::Migration
  def change
    add_column :tariff_entries, :entry_type, :integer
  end
end
