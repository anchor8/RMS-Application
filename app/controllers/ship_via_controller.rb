class ShipViaController < ApplicationController
  before_action :set_ship_via, only: [:show, :edit, :update, :destroy]

  # GET /ship_via
  # GET /ship_via.json
  def index
    @ship_via = ShipVia.all
  end

  # GET /ship_via/1
  # GET /ship_via/1.json
  def show
  end

  # GET /ship_via/new
  def new
    @ship_via = ShipVia.new
  end

  # GET /ship_via/1/edit
  def edit
  end

  # POST /ship_via
  # POST /ship_via.json
  def create
    @ship_via = ShipVia.new(ship_via_params)

    respond_to do |format|
      if @ship_via.save
        format.html { redirect_to @ship_via, notice: 'Ship via was successfully created.' }
        format.json { render :show, status: :created, location: @ship_via }
      else
        format.html { render :new }
        format.json { render json: @ship_via.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ship_via/1
  # PATCH/PUT /ship_via/1.json
  def update
    respond_to do |format|
      if @ship_via.update(ship_via_params)
        format.html { redirect_to @ship_via, notice: 'Ship via was successfully updated.' }
        format.json { render :show, status: :ok, location: @ship_via }
      else
        format.html { render :edit }
        format.json { render json: @ship_via.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ship_via/1
  # DELETE /ship_via/1.json
  def destroy
    @ship_via.destroy
    respond_to do |format|
      format.html { redirect_to ship_via_url, notice: 'Ship via was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ship_via
      @ship_via = ShipVia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_via_params
      params.require(:ship_via).permit(:ship_via_description)
    end
end
