class PrelabsController < ApplicationController
  before_action :set_prelab, only: [:show, :edit, :update, :destroy]

  # GET /prelabs
  # GET /prelabs.json
  def index
    @prelabs = Prelab.all
  end

  # GET /prelabs/1
  # GET /prelabs/1.json
  def show
  end

  # GET /prelabs/new
  def new
    @prelab = Prelab.new
  end

  # GET /prelabs/1/edit
  def edit
  end

  # POST /prelabs
  # POST /prelabs.json
  def create
    @prelab = Prelab.new(prelab_params)

    respond_to do |format|
      if @prelab.save
        format.html { redirect_to @prelab, notice: 'Prelab was successfully created.' }
        format.json { render :show, status: :created, location: @prelab }
      else
        format.html { render :new }
        format.json { render json: @prelab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prelabs/1
  # PATCH/PUT /prelabs/1.json
  def update
    respond_to do |format|
      if @prelab.update(prelab_params)
        format.html { redirect_to @prelab, notice: 'Prelab was successfully updated.' }
        format.json { render :show, status: :ok, location: @prelab }
      else
        format.html { render :edit }
        format.json { render json: @prelab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prelabs/1
  # DELETE /prelabs/1.json
  def destroy
    @prelab.destroy
    respond_to do |format|
      format.html { redirect_to prelabs_url, notice: 'Prelab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prelab
      @prelab = Prelab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prelab_params
      params.require(:prelab).permit(:begin, :end, :err_explanation, :activity_id)
    end
end
