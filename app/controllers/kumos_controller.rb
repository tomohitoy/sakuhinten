class KumosController < ApplicationController
  before_action :set_kumo, only: [:show, :edit, :update, :destroy, :confirm]

  # GET /kumos
  # GET /kumos.json
  def index
    @kumos = Kumo.includes([:ato, :mae, :comments]).references([:atos, :maes, :comments])
  end

  # GET /kumos/1
  # GET /kumos/1.json
  def show
  end

  # GET /kumos/new
  def new
    @kumo = Kumo.new
    @kumo.build_mae
    @kumo.build_ato
  end

  # GET /kumos/1/edit
  def edit
  end
  
  def confirm
  end

  # POST /kumos
  # POST /kumos.json
  def create
    @kumo = Kumo.new(kumo_params)

    respond_to do |format|
      if @kumo.save
        format.html { redirect_to kumos_path, notice: 'Kumo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kumo }
      else
        format.html { render action: 'new' }
        format.json { render json: @kumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kumos/1
  # PATCH/PUT /kumos/1.json
  def update
    respond_to do |format|
      if @kumo.update(kumo_params)
        format.html { redirect_to kumos_path, notice: 'Kumo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kumos/1
  # DELETE /kumos/1.json
  def destroy
    @kumo.destroy
    respond_to do |format|
      format.html { redirect_to kumos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kumo
      @kumo = Kumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kumo_params
      params.require(:kumo).permit(:user_id, :title, :name, :question, :answer, :mae_attributes => [:id, :image], :ato_attributes => [:id, :image])
    end
end
