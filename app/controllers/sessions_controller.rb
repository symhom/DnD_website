class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to "/maps"
  end

  def create
    @user = User.find_by(email: params["email"])
    if @user != nil
      if @user.authenticate(params["password"])
        session[:user_id] = @user.id
        redirect_to "/maps"
      else
        redirect_to "/sessions/new"
      end
    else
      redirect_to "/sessions/new"
    end
  end

end
