class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def add
        product = Product.create(name: params[:product])
        session[:cart] << product
        redirect_to root_path
    end
end
