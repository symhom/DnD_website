class MapsController < ApplicationController

  def index
  end

  def update
    map = Map.find_by(id: params["id"])
    map.name = params["name"]
    map.save
    redirect_to "/maps"
  end

  def destroy
    map = Map.find_by(id: params["id"])
    map.delete
    redirect_to "/maps"
  end

  def create
    Map.create :name => params["name"],
               :picture_url => params["picture_url"]
    redirect_to "/maps"
  end



end
