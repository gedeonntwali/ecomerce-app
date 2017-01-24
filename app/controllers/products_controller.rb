class ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.html.erb"
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
  end

  def create
    name = params[:name]
    price = params[:price]
    size = params[:size]
    image = params[:image]
    product = Product.new({name: name, price: price, size: size, image: image})
    product.save
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.size = params[:size]
    @product.image = params[:image]
    @product.save
  end 
  
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
  end

end
