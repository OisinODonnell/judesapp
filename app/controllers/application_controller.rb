class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  include SessionsHelper

  #private

#  def current_user
#    @current_user ||= User.find(session[:user_id]) if session[:user_id]
#  end
  helper_method :current_user
  helper_method :current_user_logged_in
 # def create
 #   user = User.find_by_email(params[:email])
 #   if user && user.authenticate(params[:password])
 #     session[:user_id] = user.id
 #     redirect_to root_url, :notice => "Logged in!"
 #   else
 #     flash.now.alert = "Invalid email or password"
 #     render "new"
 #   end
 # end

 # def destroy
 #   session[:user_id] = nil
 #   redirect_to root_url, :notice => "Logged out!"
 # end


end
