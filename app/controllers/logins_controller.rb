class LoginsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by_username(params[:username])
    
    if user && user.authenticate(params[:password]) 
      session[:user_id] = user.id
      session[:username] = user.username
      redirect_to :podcasts
    else
      flash[:notice] = "Invalid username or password"
      redirect_to(:new_login)
    end
  end
  
  def destroy
    authorize
    
    session[:user_id] = nil
    redirect_to(:root)
  end
end