class SessionsController < ApplicationController
  
  def new
    redirect_to root if logged_in?
  end
  
  def create
    session[:name] = params[:name]
  end
  
  def destroy
    session.destroy if logged_in?
    redirect_to login_path
  end
  
end