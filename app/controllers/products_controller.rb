class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to product_path
    else
      render :edit
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    end
  end

  def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to categories_path
    end

  private

  def product_params
    params.require(:product).permit(:category_id, :title, :description, :website, :contact)
  end


end
