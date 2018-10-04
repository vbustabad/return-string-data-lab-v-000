class ProductsController < ApplicationController

  def description
    @product = Product.find(params[:id])
    render plain: @product.description
  end

  def inventory
    @product = Product.find(params[:id])

    if @product.inventory
      render plain: "true"
    else
      render plain: "false"
    end
  end

  def index
    @products = Product.all
  end

  def new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :description, :inventory)
    end
end
