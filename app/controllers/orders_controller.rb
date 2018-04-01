class OrdersController < ApplicationController
  # Set order status before performing show, edit, update, destroy actions
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    # Breadcrumbs for new order
    add_breadcrumb 'Order Management', ordermgmt_path
    add_breadcrumb 'Create New Order'

    @order = Order.new
    @order.order_date = Date.current
    @order.shipper_id = 7

    # Parameters from customer
    @order.city = params['city']
    @order.country_id = params['country_id']
    @order.customer_id = params['customer_id']
    @order.state_id = params['state_id']
    @order.street_address_1 = params['street_address_1']
    @order.street_address_2 = params['street_address_2']
    @order.zip_code = params['zip_code']

    # Parameters from vendor
    @order.vendor_id = params['vendor_id']
  end

  # GET /orders/1/edit
  def edit
    # Breadcrumbs for edit order
    add_breadcrumb 'Order Management', ordermgmt_path
    add_breadcrumb 'Edit Order'
  end

  # POST /orders
  # POST /orders.json
  def create
    # Breadcrumbs for new order
    add_breadcrumb 'Order Management', ordermgmt_path
    add_breadcrumb 'Create New Order'
    
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to ordermgmt_url, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to ordermgmt_url, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to ordermgmt_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Import order data
  def import
    if params[:file].nil?
      # File doesn't exist
      redirect_to importmgmt_url, notice: 'Order data file is missing, please choose a csv file.'
    else
      # File exists
      Order.import(params[:file])
      redirect_to importmgmt_url, notice: 'Order data imported!'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:vendor_id, :order_status_id, :customer_id, :country_id, :employee_id, :payment_type_id, :shipper_id, :state_id, :shipping_number, :purchase_order_number, :order_date, :ship_date, :order_total, :street_address_1, :street_address_2, :city, :zip_code)
    end
end
