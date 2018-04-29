class SessionsController < ApplicationController
  
  def new
    binding.pry
    redirect_to root_path if logged_in?
  end
  
  def create
    binding.pry
    session[:name] = params[:name]
  end
  
  def destroy
    session.destroy if logged_in?
    redirect_to login_path
  end
  
end
