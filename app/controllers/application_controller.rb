class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authorize
    if current_user.nil?
      redirect_to :new_login
    end
  end
  
  
    
  private
  
  # Return either `nil` or a User object.
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
end
