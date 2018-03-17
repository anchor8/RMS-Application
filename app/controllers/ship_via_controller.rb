class ShipViaController < ApplicationController
  before_action :set_ship_vium, only: [:show, :edit, :update, :destroy]

  # GET /ship_via
  # GET /ship_via.json
  def index
    @ship_via = ShipVium.all
  end

  # GET /ship_via/1
  # GET /ship_via/1.json
  def show
  end

  # GET /ship_via/new
  def new
    @ship_vium = ShipVium.new
  end

  # GET /ship_via/1/edit
  def edit
  end

  # POST /ship_via
  # POST /ship_via.json
  def create
    @ship_vium = ShipVium.new(ship_vium_params)

    respond_to do |format|
      if @ship_vium.save
        format.html { redirect_to @ship_vium, notice: 'Ship vium was successfully created.' }
        format.json { render :show, status: :created, location: @ship_vium }
      else
        format.html { render :new }
        format.json { render json: @ship_vium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_via/1
  # PATCH/PUT /ship_via/1.json
  def update
    respond_to do |format|
      if @ship_vium.update(ship_vium_params)
        format.html { redirect_to @ship_vium, notice: 'Ship vium was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_vium }
      else
        format.html { render :edit }
        format.json { render json: @ship_vium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_via/1
  # DELETE /ship_via/1.json
  def destroy
    @ship_vium.destroy
    respond_to do |format|
      format.html { redirect_to ship_via_url, notice: 'Ship vium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_vium
      @ship_vium = ShipVium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_vium_params
      params.require(:ship_vium).permit(:ship_via_description)
    end
end
