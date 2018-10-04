class ProductsController < ApplicationController

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def index
    @products = Product.all
  end

  def new
  end

  def create
    @product = Product.new(product_params)
  end

  private

    def product_params
      params.require(:product).permit(:name, :price, :description, :inventory)
    end
end
