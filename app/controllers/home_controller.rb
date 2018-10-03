class HomeController < ApplicationController
  def index
  
    @search = Product.ransack(params[:q])
    @products = @search.result
  end
end
