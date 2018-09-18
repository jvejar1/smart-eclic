require 'test_helper'

class CircuitSimulationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @circuit_simulation = circuit_simulations(:one)
  end

  test "should get index" do
    get circuit_simulations_url
    assert_response :success
  end

  test "should get new" do
    get new_circuit_simulation_url
    assert_response :success
  end

  test "should create circuit_simulation" do
    assert_difference('CircuitSimulation.count') do
      post circuit_simulations_url, params: { circuit_simulation: { circuit_id: @circuit_simulation.circuit_id, grade: @circuit_simulation.grade, user_prelab_id: @circuit_simulation.user_prelab_id } }
    end

    assert_redirected_to circuit_simulation_url(CircuitSimulation.last)
  end

  test "should show circuit_simulation" do
    get circuit_simulation_url(@circuit_simulation)
    assert_response :success
  end

  test "should get edit" do
    get edit_circuit_simulation_url(@circuit_simulation)
    assert_response :success
  end

  test "should update circuit_simulation" do
    patch circuit_simulation_url(@circuit_simulation), params: { circuit_simulation: { circuit_id: @circuit_simulation.circuit_id, grade: @circuit_simulation.grade, user_prelab_id: @circuit_simulation.user_prelab_id } }
    assert_redirected_to circuit_simulation_url(@circuit_simulation)
  end

  test "should destroy circuit_simulation" do
    assert_difference('CircuitSimulation.count', -1) do
      delete circuit_simulation_url(@circuit_simulation)
    end

    assert_redirected_to circuit_simulations_url
  end
end
