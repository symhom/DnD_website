class MapsController < ApplicationController

  def index
  end

  def homepage
  end

  def show
    map = Map.find_by(id: params["id"])
    user = map.user_id
    stock_user = User.find_by(email: "Stock@example.org")
    if user != session[:user_id] && user != stock_user.id
      redirect_to "/maps", notice: "You are not allowed to see this map"
    end      

  end



  def update
    map = Map.find_by(id: params["id"])
    user = map.user_id
    if user == session[:user_id]
      map = Map.find_by(id: params["id"])
      map.name = params["name"]
      map.description = params["description"]
      map.save
      redirect_to "/maps"
    else
      redirect_to "/maps", notice: "You are not allowed to update this map."
    end
  end

  def destroy
    map = Map.find_by(id: params["id"])
    user = map.user_id
    if user == session[:user_id]
      map.delete
      redirect_to "/maps"
    else
      redirect_to "/maps", notice: "You are not allowed to delete this map."
    end
  end

  def create
    Map.create :name => params["name"],
               :picture_url => params["picture_url"],
               :description => params["description"],
               :user_id => session[:user_id]
    redirect_to "/maps"
  end



end
