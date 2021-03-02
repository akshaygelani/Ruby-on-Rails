class SessionsController < ApplicationController

  skip_before_action :authorized

  def new
    redirect_to '/notes' if logged_in?

  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/notes'
    else
      redirect_to '/login'
    end
  end

  def welcome
    redirect_to '/notes' if logged_in?
  end

  def logout
    session[:user_id] = nil
    redirect_to '/welcome'
  end
end
