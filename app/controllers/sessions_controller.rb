class SessionsController < ApplicationController
  
  def new
    redirect_to root_path if logged_in?
  end
  
  def create
    return redirect_to root_path if logged_in?
    if !!params[:name] && !params[:name].strip.empty?
      session[:name] = params[:name]
      redirect_path
    end
    redirect_to login_path
  end
  
  def destroy
    reset_session if logged_in?
    redirect_to login_path
  end
  
end
