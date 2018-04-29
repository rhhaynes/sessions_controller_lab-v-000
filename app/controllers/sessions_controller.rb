class SessionsController < ApplicationController
  
  def new
    redirect_to root_path if logged_in?
  end
  
  def create
    if logged_in?
      return redirect_to root_path
    elsif !!params[:name] && !params[:name].strip.empty?
      session[:name] = params[:name]
      return redirect_to root_path
    else
      redirect_to login_path
    end
  end
  
  def destroy
    reset_session if logged_in?
    redirect_to login_path
  end
  
end
