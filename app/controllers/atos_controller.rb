class AtosController < ApplicationController
  before_action :set_ato, only: [:show, :edit, :update, :destroy]

  # GET /atos
  # GET /atos.json
  def index
    @atos = Ato.all
  end

  # GET /atos/1
  # GET /atos/1.json
  def show
  end

  # GET /atos/new
  def new
    @ato = Ato.new
  end

  # GET /atos/1/edit
  def edit
  end

  # POST /atos
  # POST /atos.json
  def create
    @ato = Ato.new(ato_params)

    respond_to do |format|
      if @ato.save
        format.html { redirect_to @ato, notice: 'Ato was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ato }
      else
        format.html { render action: 'new' }
        format.json { render json: @ato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atos/1
  # PATCH/PUT /atos/1.json
  def update
    respond_to do |format|
      if @ato.update(ato_params)
        format.html { redirect_to @ato, notice: 'Ato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atos/1
  # DELETE /atos/1.json
  def destroy
    @ato.destroy
    respond_to do |format|
      format.html { redirect_to atos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ato
      @ato = Ato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ato_params
      params.require(:ato).permit(:image, :kumo_id)
    end
end
