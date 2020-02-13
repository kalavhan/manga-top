class SessionsController < ApplicationController
  def new
    @signin_link = 'nav-link-active'
    redirect_to root_path if logged_in?
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      log_in(@user)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to signin_path
  end
end
