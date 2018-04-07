class ShippersController < ApplicationController
  # Set shipper before performing show, edit, update, destroy actions
  before_action :set_shipper, only: [:show, :edit, :update, :destroy]

  # GET /shippers
  # GET /shippers.json
  def index
    @shippers = Shipper.all
  end

  # GET /shippers/1
  # GET /shippers/1.json
  def show
  end

  # GET /shippers/new
  def new
    @shipper = Shipper.new
  end

  # GET /shippers/1/edit
  def edit
  end

  # POST /shippers
  # POST /shippers.json
  def create
    @shipper = Shipper.new(shipper_params)

    respond_to do |format|
      if @shipper.save
        format.html { redirect_to @shipper, notice: 'Shipper was successfully created.' }
        format.json { render :show, status: :created, location: @shipper }
      else
        format.html { render :new }
        format.json { render json: @shipper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shippers/1
  # PATCH/PUT /shippers/1.json
  def update
    respond_to do |format|
      if @shipper.update(shipper_params)
        format.html { redirect_to @shipper, notice: 'Shipper was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipper }
      else
        format.html { render :edit }
        format.json { render json: @shipper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shippers/1
  # DELETE /shippers/1.json
  def destroy
    @shipper.destroy
    
    respond_to do |format|
      format.html { redirect_to shippers_url, notice: 'Shipper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipper
      @shipper = Shipper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipper_params
      params.require(:shipper).permit(:shipper_description)
    end
end
