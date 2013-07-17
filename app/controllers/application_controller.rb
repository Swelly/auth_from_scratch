class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private
  def current_user
<<<<<<< HEAD
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
=======
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
>>>>>>> 58d94e6e6e6c9f58185301eaed3d3598cb07679f
  end
end
