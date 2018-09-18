class CircuitSimulationsController < ApplicationController
  before_action :set_circuit_simulation, only: [:show, :edit, :update, :destroy]

  # GET /circuit_simulations
  # GET /circuit_simulations.json
  def index
    @circuit_simulations = CircuitSimulation.all
  end

  # GET /circuit_simulations/1
  # GET /circuit_simulations/1.json
  def show
  end

  # GET /circuit_simulations/new
  def new
    @circuit_simulation = CircuitSimulation.new
  end

  # GET /circuit_simulations/1/edit
  def edit
  end

  # POST /circuit_simulations
  # POST /circuit_simulations.json
  def create
    @circuit_simulation = CircuitSimulation.new(circuit_simulation_params)

    respond_to do |format|
      if @circuit_simulation.save
        format.html { redirect_to @circuit_simulation, notice: 'Circuit simulation was successfully created.' }
        format.json { render :show, status: :created, location: @circuit_simulation }
      else
        format.html { render :new }
        format.json { render json: @circuit_simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circuit_simulations/1
  # PATCH/PUT /circuit_simulations/1.json
  def update
    respond_to do |format|
      if @circuit_simulation.update(circuit_simulation_params)
        format.html { redirect_to @circuit_simulation, notice: 'Circuit simulation was successfully updated.' }
        format.json { render :show, status: :ok, location: @circuit_simulation }
      else
        format.html { render :edit }
        format.json { render json: @circuit_simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circuit_simulations/1
  # DELETE /circuit_simulations/1.json
  def destroy
    @circuit_simulation.destroy
    respond_to do |format|
      format.html { redirect_to circuit_simulations_url, notice: 'Circuit simulation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circuit_simulation
      @circuit_simulation = CircuitSimulation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def circuit_simulation_params
      params.require(:circuit_simulation).permit(:user_prelab_id, :circuit_id, :grade)
    end
end
