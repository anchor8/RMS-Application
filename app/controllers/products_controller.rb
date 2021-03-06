# Products Controller
class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    add_breadcrumb 'Order Management', ordermgmt_path
    add_breadcrumb 'Create New Product'

    @product = Product.new
    @products = Product.all
  end

  # GET /products/1/edit
  def edit
    add_breadcrumb 'Products', new_product_path
    add_breadcrumb 'Edit Product'
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to new_product_path, notice: @product.product_name + " was successfully added." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to new_product_path, notice: @product.product_name + " was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to new_products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Import product data
  def import
    if params[:file].nil?
      # File doesn't exist
      redirect_to importmgmt_url, notice: 'Product data file is missing, please choose a csv file.'
    else
      # File exists
      Product.import(params[:file])

      redirect_to importmgmt_url, notice: 'Product data imported!'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:product_name, :price)
  end
end
