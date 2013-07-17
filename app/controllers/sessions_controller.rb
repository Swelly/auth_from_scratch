class SessionsController < ApplicationController
<<<<<<< HEAD

=======
>>>>>>> 58d94e6e6e6c9f58185301eaed3d3598cb07679f
  def new
  end

  def create
<<<<<<< HEAD
    #Will return either T or F
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user_id
      redirect_to root_url, notice: "You're in, kid!!"
    else
      flash.now.alert = "Invalid e-mail or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end

=======
  	# The following returns a user
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		# This is if login worked
  		# Stores the user_id in a cookie!!!!!! This is your wristband for the club
  		session[:user_id] = user.id
  		redirect_to root_url, notice: "Logged in!!!"
  	else
  		# This is if login didn't work
  		flash.now.alert = "Invalid email or password"
  		render "new"
  	end
  end

  # Logs you out
  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "Logged out"
  end
>>>>>>> 58d94e6e6e6c9f58185301eaed3d3598cb07679f
end
