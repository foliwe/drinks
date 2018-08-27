class ProductsController < ApplicationController


    def index
      @search = Product.ransack(params[:q])
      @products = @search.result
    end


  def show
    @product = Product.friendly.find(params[:id])
  end
end
