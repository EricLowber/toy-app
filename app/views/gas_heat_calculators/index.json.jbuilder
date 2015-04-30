json.array!(@gas_heat_calculators) do |gas_heat_calculator|
  json.extract! gas_heat_calculator, :id, :mixed_air_volume, :outside_air_volume, :return_air_volume, :mixed_air_temp, :supply_air_temp, :supply_air_volume
  json.url gas_heat_calculator_url(gas_heat_calculator, format: :json)
end
