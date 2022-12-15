class SessionsController < ApplicationController

  # displays login form
  def new
  end

  # checks login data and starts session
  def create
    reset_session # prevent session fixation
    par = login_params
    user = User.find_by(username: par[:username])
    Rails.logger.info("found user with username #{par[:username]}: #{user}")
    if user && user.authenticate(par[:password])
      # Save the user id in the session
      # rails will take care of setting + reading cookies
      # when the user navigates around our website.
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in'
    else
      redirect_to login_path, alert: 'Log in failed'
    end
  end

  # deletes sesssion
  def destroy
    reset_session
    redirect_to root_path, notice: 'Logged out'
  end

private

  def login_params
    params.permit(:username, :password, :authenticity_token, :commit)
  end
end
