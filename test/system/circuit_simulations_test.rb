require "application_system_test_case"

class CircuitSimulationsTest < ApplicationSystemTestCase
  setup do
    @circuit_simulation = circuit_simulations(:one)
  end

  test "visiting the index" do
    visit circuit_simulations_url
    assert_selector "h1", text: "Circuit Simulations"
  end

  test "creating a Circuit simulation" do
    visit circuit_simulations_url
    click_on "New Circuit Simulation"

    fill_in "Circuit", with: @circuit_simulation.circuit_id
    fill_in "Grade", with: @circuit_simulation.grade
    fill_in "User Prelab", with: @circuit_simulation.user_prelab_id
    click_on "Create Circuit simulation"

    assert_text "Circuit simulation was successfully created"
    click_on "Back"
  end

  test "updating a Circuit simulation" do
    visit circuit_simulations_url
    click_on "Edit", match: :first

    fill_in "Circuit", with: @circuit_simulation.circuit_id
    fill_in "Grade", with: @circuit_simulation.grade
    fill_in "User Prelab", with: @circuit_simulation.user_prelab_id
    click_on "Update Circuit simulation"

    assert_text "Circuit simulation was successfully updated"
    click_on "Back"
  end

  test "destroying a Circuit simulation" do
    visit circuit_simulations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Circuit simulation was successfully destroyed"
  end
end
