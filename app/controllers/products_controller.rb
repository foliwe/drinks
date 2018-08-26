class ProductsController < ApplicationController


    def index
      @search = Product.ransack(params[:q])
      @products = @search.result
    end


  def show
    @product = Product.find(param[:id])
  end
end
