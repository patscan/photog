class SessionsController < ApplicationController
  
  def new
    # @session = 
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:current_user_id] = user.id
      redirect_to user
    else
      redirect_to :root
    end
  end

  def destroy
  end

end