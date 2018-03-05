class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to "/"
  end

  def create
    @user = User.find_by(email: params["email"])
    if @user != nil
      if @user.authenticate(params["password"])
        session[:user_id] = @user.id
        redirect_to "/"
      else
        redirect_to "/sessions/new", notice: "Password not recognized."
      end
    else
      redirect_to "/sessions/new"
    end
  end

end
