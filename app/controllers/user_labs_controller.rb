class UserLabsController < ApplicationController
  before_action :set_user_lab, only: [:show, :edit, :update, :destroy]

  # GET /user_labs
  # GET /user_labs.json
  def index
    @user_labs = UserLab.all
  end

  # GET /user_labs/1
  # GET /user_labs/1.json
  def show
  end

  # GET /user_labs/new
  def new
    @user_lab = UserLab.new
  end

  # GET /user_labs/1/edit
  def edit
  end

  # POST /user_labs
  # POST /user_labs.json
  def create
    @user_lab = UserLab.new(user_lab_params)

    respond_to do |format|
      if @user_lab.save
        format.html { redirect_to @user_lab, notice: 'User lab was successfully created.' }
        format.json { render :show, status: :created, location: @user_lab }
      else
        format.html { render :new }
        format.json { render json: @user_lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_labs/1
  # PATCH/PUT /user_labs/1.json
  def update
    respond_to do |format|
      if @user_lab.update(user_lab_params)
        format.html { redirect_to @user_lab, notice: 'User lab was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_lab }
      else
        format.html { render :edit }
        format.json { render json: @user_lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_labs/1
  # DELETE /user_labs/1.json
  def destroy
    @user_lab.destroy
    respond_to do |format|
      format.html { redirect_to user_labs_url, notice: 'User lab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_lab
      @user_lab = UserLab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_lab_params
      params.require(:user_lab).permit(:user_id, :lab_id, :class_grade, :report_grade)
    end
end
