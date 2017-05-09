class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    ## if the user is there and their password was entered correctly
    if user.present? && user.authenticate(params[:password])
      ## save their id into the session
      session[:user_id] = user.id
      ## redirect to new appearance
      redirect_to new_appearance_path
    else
      flash[:notice] = "You made some big mistake"
      ## let them know there was a problem
      ## redirect to login
      redirect_to login_path
    end
  end

end
