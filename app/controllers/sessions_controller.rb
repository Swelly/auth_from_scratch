class SessionsController < ApplicationController

  def new
  end

  def create
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

end
