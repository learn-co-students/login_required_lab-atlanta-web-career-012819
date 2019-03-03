class SessionsController < ApplicationController
  def new
  end

  def create
    # redirect_to login_path unless current_user
    # binding.pry
    # if current_user
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to hello_path
      # binding.pry
    else
      redirect_to login_path
    end
  end

  def destroy
    # binding.pry
    session.delete :name if session[:name]
    redirect_to login_path
  end
end
