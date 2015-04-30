require 'test_helper'

class GasHeatCalculatorsControllerTest < ActionController::TestCase
  setup do
    @gas_heat_calculator = gas_heat_calculators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gas_heat_calculators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gas_heat_calculator" do
    assert_difference('GasHeatCalculator.count') do
      post :create, gas_heat_calculator: { mixed_air_temp: @gas_heat_calculator.mixed_air_temp, mixed_air_volume: @gas_heat_calculator.mixed_air_volume, outside_air_volume: @gas_heat_calculator.outside_air_volume, return_air_volume: @gas_heat_calculator.return_air_volume, supply_air_temp: @gas_heat_calculator.supply_air_temp, supply_air_volume: @gas_heat_calculator.supply_air_volume }
    end

    assert_redirected_to gas_heat_calculator_path(assigns(:gas_heat_calculator))
  end

  test "should show gas_heat_calculator" do
    get :show, id: @gas_heat_calculator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gas_heat_calculator
    assert_response :success
  end

  test "should update gas_heat_calculator" do
    patch :update, id: @gas_heat_calculator, gas_heat_calculator: { mixed_air_temp: @gas_heat_calculator.mixed_air_temp, mixed_air_volume: @gas_heat_calculator.mixed_air_volume, outside_air_volume: @gas_heat_calculator.outside_air_volume, return_air_volume: @gas_heat_calculator.return_air_volume, supply_air_temp: @gas_heat_calculator.supply_air_temp, supply_air_volume: @gas_heat_calculator.supply_air_volume }
    assert_redirected_to gas_heat_calculator_path(assigns(:gas_heat_calculator))
  end

  test "should destroy gas_heat_calculator" do
    assert_difference('GasHeatCalculator.count', -1) do
      delete :destroy, id: @gas_heat_calculator
    end

    assert_redirected_to gas_heat_calculators_path
  end
end
