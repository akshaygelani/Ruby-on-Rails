class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]
  def new
    redirect_to '/notes' if logged_in?
    @user = User.new
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def create
    @user = User.new(user_params)
    @user.pass = params[:user][:password]
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/users/new/', notice: @user.errors
    end
  end

  def change_password
    @user = current_user
  end

  def update_password
    @user = current_user
    @user.pass = params[:user][:password]
    if @user.update(params.require(:user).permit(:password, :password_confirmation))
      session[:user_id] = nil
      redirect_to '/welcome'
    else
      redirect_to '/password', notice: @user.errors
    end
  end
end
