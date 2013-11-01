class MaesController < ApplicationController
  before_action :set_mae, only: [:show, :edit, :update, :destroy]

  # GET /maes
  # GET /maes.json
  def index
    @maes = Mae.all
  end

  # GET /maes/1
  # GET /maes/1.json
  def show
  end

  # GET /maes/new
  def new
    @mae = Mae.new
  end

  # GET /maes/1/edit
  def edit
  end

  # POST /maes
  # POST /maes.json
  def create
    @mae = Mae.new(mae_params)

    respond_to do |format|
      if @mae.save
        format.html { redirect_to @mae, notice: 'Mae was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mae }
      else
        format.html { render action: 'new' }
        format.json { render json: @mae.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maes/1
  # PATCH/PUT /maes/1.json
  def update
    respond_to do |format|
      if @mae.update(mae_params)
        format.html { redirect_to @mae, notice: 'Mae was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mae.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maes/1
  # DELETE /maes/1.json
  def destroy
    @mae.destroy
    respond_to do |format|
      format.html { redirect_to maes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mae
      @mae = Mae.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mae_params
      params.require(:mae).permit(:image, :kumo_id)
    end
end
