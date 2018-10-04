class ProductsController < ApplicationController

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

end
