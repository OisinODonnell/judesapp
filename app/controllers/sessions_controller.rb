class SessionsController < ApplicationController
  include SessionsHelper


  def new
  end

  def destroy
    logout if logged_in?
    redirect_to root_url
  end

  def create
    user = User.where(email: params[:session][:email].downcase).first
    if user && user.authenticate(params[:session][:password])
      login user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
end

