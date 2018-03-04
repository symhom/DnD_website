class GamesController < ApplicationController
  # layout :game_layout, :only=>[:show]


  def index
    if !session[:user_id].present? 
      redirect_to "/sessions/new", notice: "Please sign in to create and view games"
    end
  end

#no update for Games

  def show
       render :layout=>'game_layout'

  end
  
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

  def addplayers
  end

  def create_addplayers

    Player.create :game_id => params["id"], 
                  :character_id => params["character_id"], 
                  :user_id => session[:user_id]
    redirect_to "/games"

  end

  def deleteplayers
  end

  def destroy_deleteplayers
    p = Player.find_by(game_id: params["id"], character_id: params["character_id"])
    p.delete
    redirect_to "/games"
  end


end
