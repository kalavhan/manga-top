class SessionsController < ApplicationController
  def new
  end

  def create
    @session = User.find_by(Name: params[:session][:Name])
    if @session
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    log_out if current_user
    redirect_to signup_path
  end
end
