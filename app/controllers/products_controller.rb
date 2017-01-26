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
    flash[:success] = "Product Created"
    redirect_to "/products/#{product.id}"
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.size = params[:size]
    product.image = params[:image]
    product.save
    flash[:success] = "Product Updated"
    redirect_to "/products/#{product.id}"
  end 
  
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:alert] = "Product destroyed."
    redirect_to "/products"
  end

end
