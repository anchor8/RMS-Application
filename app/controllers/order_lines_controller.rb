class OrderLinesController < ApplicationController
  before_action :set_order_line, only: [:show, :edit, :update, :destroy]

  # GET /order_lines
  # GET /order_lines.json
  def index
    @order_lines = OrderLine.all
  end

  # GET /order_lines/1
  # GET /order_lines/1.json
  def show
  end

  # GET /order_lines/new
  def new
    @order_line = OrderLine.new

  end

  # GET /order_lines/1/edit
  def edit
    @order_line = OrderLine.find(id)
    @order_line_price = Product.where('product_id = ?', order_line.product_id)
  end

  # POST /order_lines
  # POST /order_lines.json
  def create
    @order_line = OrderLine.new(order_line_params)

    respond_to do |format|
      if @order_line.save
        format.html { redirect_to @order_line, notice: 'Order line was successfully added.' }
        format.json { render :show, status: :created, location: @order_line }
      else
        format.html { render :new }
        format.json { render json: @order_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_lines/1
  # PATCH/PUT /order_lines/1.json
  def update
    respond_to do |format|
      if @order_line.update(order_line_params)
        format.html { redirect_to @order_line, notice: 'Order line was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_line }
      else
        format.html { render :edit }
        format.json { render json: @order_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_lines/1
  # DELETE /order_lines/1.json
  def destroy
    @order_line.destroy
    respond_to do |format|
      format.html { redirect_to order_lines_url, notice: 'Order line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Import order line data
  def import
    if params[:file].nil?
      # File doesn't exist
      redirect_to importmgmt_url, notice: 'Order line data file is missing, please choose a csv file.'
    else
      # File exists
      OrderLine.import(params[:file])
      redirect_to importmgmt_url, notice: 'Order line data imported!'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_line
      @order_line = OrderLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_line_params
      params.require(:order_line).permit(:order_id, :product_id, :price, :number_of_items)
    end
end
