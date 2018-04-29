class SessionsController < ApplicationController
  
  def new
    redirect_to root_path if logged_in?
  end
  
  def create
    if !!params[:name] && !params[:name].strip.empty? && 
      session[:name] = params[:name] if !logged_in?
    end
    redirect_to login_path
  end
  
  def destroy
    reset_session if logged_in?
    redirect_to login_path
  end
  
end
