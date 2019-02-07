class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(params[:session][:email], params[:session][:password])
    if user
      session[:current_user_id] = user.id
      redirect_to users_path
    else
      flash.now[:danger] = "Invalid email/password combination"
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:current_user_id)
    @current_user = nil
    redirect_to users_path
  end
end
