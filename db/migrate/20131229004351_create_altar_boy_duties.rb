class CreateAltarBoyDuties < ActiveRecord::Migration
  def change
    create_table :altar_boy_duties do |t|
      t.references :altar_boy, index: true
      t.references :duty_daily, index: true

      t.timestamps
    end
  end
end
