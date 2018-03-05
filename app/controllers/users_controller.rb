class UsersController < ApplicationController

  def show
    if params["id"] != session[:user_id].to_s
      redirect_to "/", notice: "Nice try!"
    end
  end

  def index
    @users = User.all.order('email')
  end

  def new # /users/new
    @user = User.new
  end

  def update
    user = User.find_by(id: params["id"])
    if user != nil
      if user.authenticate(params["old_password"])
        user.password = params["new_password"]
        user.save
        redirect_to "/users/#{session[:user_id]}", notice: "Password has successfully changed"
      else
        redirect_to "/users/#{session[:user_id]}", notice: "Password not recognized."

      end
    else
      redirect_to "/sessions/new"
    end



  end

  def destroy
    user = User.find_by(id: params["id"])
    user.delete
    redirect_to "/users"
  end

  def create # POST /users
    # @user = User.create :email => params["email"], :password => params["password"]
    @user = User.new
    @user.email = params["email"]
    @user.password = params["password"]

    # if @user.errors.any?
    if @user.save
      redirect_to "/", notice: "Thanks for signing up"
    else
      render 'new'
    end
  end

end
