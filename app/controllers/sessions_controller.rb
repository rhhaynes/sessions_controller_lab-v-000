class SessionsController < ApplicationController
  
  def new
    redirect_to root_path if logged_in?
  end
  
  def create
    if !!params[:name] && !params[:name].strip.empty? && !logged_in?
      session[:name] = params[:name]
    end
    redirect_to login_path
  end
  
  def destroy
    reset_session if logged_in?
    redirect_to login_path
  end
  
end
