class CreateAltarBoys < ActiveRecord::Migration
  def change
    create_table :altar_boys do |t|
      t.string :name

      t.timestamps
    end
  end
end
