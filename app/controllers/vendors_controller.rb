# Vendors Controller
class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  # GET /vendors
  # GET /vendors.json
  def index
    @vendors = Vendor.all
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
  end

  # GET /vendors/new
  def new
    add_breadcrumb 'Vendor Management', vendormgmt_path
    add_breadcrumb 'Create New Vendor'

    @vendor = Vendor.new
  end

  # GET /vendors/1/edit
  def edit
    add_breadcrumb 'Vendor Management', vendormgmt_path
    add_breadcrumb 'Edit Vendor'
  end

  # POST /vendors
  # POST /vendors.json
  def create
    add_breadcrumb 'Vendor Management', vendormgmt_path
    add_breadcrumb 'Create New Vendor'

    @vendor = Vendor.new(vendor_params)

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to vendormgmt_url, notice: @vendor_name.to_s + " was successfully added." }
        format.json { render :show, status: :created, location: @vendor }
      else
        format.html { render :new }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendors/1
  # PATCH/PUT /vendors/1.json
  def update
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to vendormgmt_url, notice: @vendor_name.to_s + " was successfully updated." }
        format.json { render :show, status: :ok, location: @vendor }
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    @vendor.destroy

    respond_to do |format|
      format.html { redirect_to vendormgmt_url, notice: 'Vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Import vendor data
  def import
    if params[:file].nil?
      # File doesn't exist
      redirect_to importmgmt_url, notice: 'Vendor data file is missing, please choose a csv file.'
    else
      # File exists
      Vendor.import(params[:file])
      redirect_to importmgmt_url, notice: 'Vendor data imported!'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vendor
    @vendor = Vendor.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vendor_params
    params.require(:vendor).permit(:state_id, :vendor_status_id, :vendor_name, :contact_name, :job_title, :work_phone, :mobile, :fax, :vendor_email, :vendor_cc_email, :website, :street_address_1, :street_address_2, :city, :zip_code)
  end
end
