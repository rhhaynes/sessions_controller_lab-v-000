class SessionsController < ApplicationController
  
  def new
    binding.pry
    redirect_to root_path if logged_in?
  end
  
  def create
    binding.pry
    if !!params[:name] && !params[:name].gsub(\ {1,}\,"").empty?
    session[:name] = params[:name]
  end
  
  def destroy
    binding.pry
    session.destroy if logged_in?
    redirect_to login_path
  end
  
end
