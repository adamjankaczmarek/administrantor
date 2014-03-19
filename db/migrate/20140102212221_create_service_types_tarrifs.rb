class CreateServiceTypesTarrifs < ActiveRecord::Migration
  def change
    create_table :service_types_tarrifs do |t|
      t.references :service_type, index: true
      t.references :tarrif, index: true
      t.integer :points

      t.timestamps
    end
  end
end
