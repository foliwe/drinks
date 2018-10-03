class ProductsController < ApplicationController


    def index
      @search = Product.ransack(params[:q])
      @products = @search.result
    end

     def autocomplete
         @search = Product.ransack(params[:q])
         @products = @search.result
         render json: @products.map{ |product|{id: product.id, value:product.name}}
     end

  def show
    @product = Product.friendly.find(params[:id])
  end
end
