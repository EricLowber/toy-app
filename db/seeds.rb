 require 'faker'
 
 # Create Posts
 10.times do
   GasHeatCalculator.create!(
     mixed_air_volume:  Faker::Number.number(5),
     outside_air_volume:   Faker::Number.number(5),
     return_air_volume: Faker::Number.number(5),
     supply_air_volume: Faker::Number.number(5),
     mixed_air_temp: Faker::Number.number(2),
     supply_air_temp: Faker::Number.number(2),
   )

 end
  GasHeatCalculators = GasHeatCalculator.all
 

 
 puts "Seed finished"
 puts "#{GasHeatCalculators.count} inputs created"
 