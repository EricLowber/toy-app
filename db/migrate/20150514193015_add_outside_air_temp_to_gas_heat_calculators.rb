class AddOutsideAirTempToGasHeatCalculators < ActiveRecord::Migration
  def change
    add_column :gas_heat_calculators, :outside_air_temp, :float
    add_index :gas_heat_calculators, :outside_air_temp
  end
end
