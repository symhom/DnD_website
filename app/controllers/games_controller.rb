class GamesController < ApplicationController
  # layout :game_layout, :only=>[:show]


  def index

    if !session[:user_id].present? 
      redirect_to "/sessions/new", notice: "Please sign in to create and view games"
    end
  end

#no update for Games

  def show
    game = Game.find_by(id: params["id"])
    user = game.user_id
    if user == session[:user_id]
       render :layout=>'game_layout'
    else
      redirect_to "/games", notice: "You are not allowed to see this game"
    end      

  end
  
  def destroy    
    game = Game.find_by(id: params["id"])
    user = game.user_id
    if user == session[:user_id]
      game.delete
      redirect_to "/games"
    else
      redirect_to "/games", notice: "You are not allowed to delete this game."
    end
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
    game = Game.find_by(id: params["id"])
    user = game.user_id
    if user == session[:user_id]
      Player.create :game_id => params["id"], 
                    :character_id => params["character_id"], 
                    :user_id => session[:user_id]
      redirect_to "/games"
    else
      redirect_to "/games", notice: "You are not allowed to add players to this game."
    end

  end

  def deleteplayers
  end

  def destroy_deleteplayers
    game = Game.find_by(id: params["id"])
    user = game.user_id
    if user == session[:user_id]
      p = Player.find_by(game_id: params["id"], character_id: params["character_id"])
      p.delete
      redirect_to "/games"
    else
      redirect_to "/games", notice: "You are not allowed to delete players to this game."
    end
  end


end
