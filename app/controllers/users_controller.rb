class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation])


    if user.save
      session[:user_id] = user.id
      flash[:success] = "You have created a new account"
      redirect_to '/products'
    else
      flash[:warning] = 'Wrong email or password'
      redirect_to '/signup'
    end
  end
end
