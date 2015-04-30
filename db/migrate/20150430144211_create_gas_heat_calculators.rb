class CreateGasHeatCalculators < ActiveRecord::Migration
  def change
    create_table :gas_heat_calculators do |t|
      t.float :mixed_air_volume
      t.float :outside_air_volume
      t.float :return_air_volume
      t.float :mixed_air_temp
      t.float :supply_air_temp
      t.float :supply_air_volume

      t.timestamps null: false
    end
  end
end
