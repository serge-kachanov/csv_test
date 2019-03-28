class ProductsController < ApplicationController
  def index
    @products = Product.by_producer(params[:producer])
    paginate @products, page: params[:page], per_page: params[:per_page]
  end
end
