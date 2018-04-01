class CustomersController < ApplicationController
  # Set customer before performing show, edit, update, destroy actions
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    # Set breadcrumbs for new customer
    add_breadcrumb 'Customer Management', customermgmt_path
    add_breadcrumb 'Create New Customer'

    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    # Set breadcrumbs for edit customer
    add_breadcrumb 'Customer Management', customermgmt_path
    add_breadcrumb 'Edit Customer'
  end

  # POST /customers
  # POST /customers.json
  def create
    # Set breadcrumbs for new customer
    add_breadcrumb 'Customer Management', customermgmt_path
    add_breadcrumb 'Create New Customer'
    
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to customermgmt_url, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to customermgmt_url, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customermgmt_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Import customer data
  def import
    if params[:file].nil?
      # File doesn't exist
      redirect_to importmgmt_url, notice: 'Customer data file is missing, please choose a csv file.'
    else
      # File exists
      Customer.import(params[:file])
      redirect_to importmgmt_url, notice: 'Customer data imported!'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:state_id, :company_name, :customer_first_name, :customer_last_name, :job_title, :work_phone, :mobile, :fax, :customer_email, :customer_cc_email, :website, :social_media_address, :street_address_1, :street_address_2, :city, :zip_code)
    end
end
