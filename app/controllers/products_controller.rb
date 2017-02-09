class ProductsController < ApplicationController

before_action :authenticate_user!, except: [:index, :show, :search]
before_action :authenticate_admin!, only: [:new, :destroy, :edit]

  def index

    if params[:price]
      @products = Product.all.order(price: params[:price])
    elsif params[:cheap]
      @products = Product.where("price<200")
    elsif params[:category]
     @products =  Category.find_by(name: params[:category]).products

    else
      @products = Product.all
    end

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
    description = params[:description]
    product = Product.new({name: name, price: price, size: size, description: description})
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
    product.description = params[:description]
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

  def search
    search_query = params[:search_input]
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @products.empty?
      flash[:info] = "No products found in search"
    end
    render :index
  end

end