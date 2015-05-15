class GasHeatCalculator < ActiveRecord::Base
  belongs_to :user
  before_save :set_return_air_volume
  before_save :set_mixed_air_temp
  
  def set_return_air_volume
      self.return_air_volume = self.mixed_air_volume - self.outside_air_volume
  end

  def set_mixed_air_temp
  	self.mixed_air_temp = ((outside_air_temp*outside_air_volume)+(return_air_temp*return_air_volume))/mixed_air_volume
  end
end
