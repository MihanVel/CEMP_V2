class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    @categories = Category.order(name: :asc)
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.order(category_name: :asc) # Fetch categories for the dropdown
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    if @product.destroy
      respond_to do |format|
        format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      end
    else
      respond_to do |format|
        format.html { redirect_to products_url, alert: 'Failed to destroy the product.' }
      end
    end
  end
  

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :about, :description, :price, :buy_now_price, :product_condition, :brand, :is_featured, :is_on_sale, :is_refundable, :is_disputable, :quantity, :weight, :size, images: [])
  end
end
