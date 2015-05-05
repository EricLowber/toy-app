class GasHeatCalculatorsController < ApplicationController
  before_action :set_gas_heat_calculator, only: [:show, :edit, :update, :destroy]

  # GET /gas_heat_calculators
  # GET /gas_heat_calculators.json
  def index
    @gas_heat_calculators = GasHeatCalculator.all
  end

  # GET /gas_heat_calculators/1
  # GET /gas_heat_calculators/1.json
  def show
  end

  # GET /gas_heat_calculators/new
  def new
    @gas_heat_calculator = GasHeatCalculator.new
  end

  # GET /gas_heat_calculators/1/edit
  def edit
  end

  # POST /gas_heat_calculators
  # POST /gas_heat_calculators.json
  def create
    @gas_heat_calculator = GasHeatCalculator.new(gas_heat_calculator_params)
    respond_to do |format|
      if @gas_heat_calculator.save
        flash[:notice] = "Gas heat calculator was successfully created."
        redirect_to @gas_heat_calculator
      else
        flash[:error] = "There was an error creating the calculator"
        render :new 
      end
    end
  end

  # PATCH/PUT /gas_heat_calculators/1
  # PATCH/PUT /gas_heat_calculators/1.json
  def update
    respond_to do |format|
      if @gas_heat_calculator.update(gas_heat_calculator_params)
        flash[:notice] = 'Gas heat calculator was successfully updated.' 
        redirect_to @gas_heat_calculator   
      else
        flash[:error] = "There was an error updating the calculator"
        render :edit 
      end
    end
  end

  # DELETE /gas_heat_calculators/1
  # DELETE /gas_heat_calculators/1.json
  def destroy
    @gas_heat_calculator.destroy
    respond_to do |format|
    flash[:alert] = "Gas heat calculator was successfully destroyed."
    redirect_to gas_heat_calculators_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gas_heat_calculator
      @gas_heat_calculator = GasHeatCalculator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gas_heat_calculator_params
      params.require(:gas_heat_calculator).permit(:mixed_air_volume, :outside_air_volume, :return_air_volume, :mixed_air_temp, :supply_air_temp, :supply_air_volume)
    end
end
