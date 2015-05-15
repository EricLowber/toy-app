class AddUserToGasHeatCalculators < ActiveRecord::Migration
  def change
    add_column :gas_heat_calculators, :user_id, :integer
    add_index :gas_heat_calculators, :user_id
  end
end
