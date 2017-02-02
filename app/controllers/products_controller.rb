class ProductsController < ApplicationController

  def index

    if params[:price]
      @products = Product.all.order(price: params[:price])
    elsif params[:cheap]
      @products = Product.where("price<200")
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
    image = params[:image]
    description = params[:description]
    product = Product.new({name: name, price: price, size: size, image: image, description: description})
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
    description = params[:description]
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
