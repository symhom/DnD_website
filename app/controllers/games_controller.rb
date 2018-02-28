class GamesController < ApplicationController

  def index
    if !session[:user_id].present? 
      redirect_to "/sessions/new", notice: "Please sign in to create and view games"
    end
  end

#no update for Games

  def destroy    
    game = Game.find_by(id: params["id"])
    game.delete
    redirect_to "/games"
  end

  def create
    if session[:user_id].present? 

      Game.create :name => params["name"],
                  :map_id => params["map_id"],
                  :user_id => session[:user_id]

       redirect_to "/games"
    else
      redirect_to "/sessions/new", notice: "Please sign in to create and view games"
    end
  end



end
