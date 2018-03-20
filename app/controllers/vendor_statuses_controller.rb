class VendorStatusesController < ApplicationController
  before_action :set_vendor_status, only: [:show, :edit, :update, :destroy]

  # GET /vendor_statuses
  # GET /vendor_statuses.json
  def index
    @vendor_statuses = VendorStatus.all
  end

  # GET /vendor_statuses/1
  # GET /vendor_statuses/1.json
  def show
  end

  # GET /vendor_statuses/new
  def new
    @vendor_status = VendorStatus.new
  end

  # GET /vendor_statuses/1/edit
  def edit
  end

  # POST /vendor_statuses
  # POST /vendor_statuses.json
  def create
    @vendor_status = VendorStatus.new(vendor_status_params)

    respond_to do |format|
      if @vendor_status.save
        format.html { redirect_to @vendor_status, notice: 'Vendor status was successfully created.' }
        format.json { render :show, status: :created, location: @vendor_status }
      else
        format.html { render :new }
        format.json { render json: @vendor_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendor_statuses/1
  # PATCH/PUT /vendor_statuses/1.json
  def update
    respond_to do |format|
      if @vendor_status.update(vendor_status_params)
        format.html { redirect_to @vendor_status, notice: 'Vendor status was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor_status }
      else
        format.html { render :edit }
        format.json { render json: @vendor_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_statuses/1
  # DELETE /vendor_statuses/1.json
  def destroy
    @vendor_status.destroy
    respond_to do |format|
      format.html { redirect_to vendor_statuses_url, notice: 'Vendor status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_status
      @vendor_status = VendorStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_status_params
      params.require(:vendor_status).permit(:vendor_status_type)
    end
end
