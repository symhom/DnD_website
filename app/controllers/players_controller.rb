  class PlayersController < ApplicationController

  skip_before_action :verify_authenticity_token


  def update
  	player = Player.find_by(id: params["id"])
  	player.x_coord = params["left"]
  	player.y_coord = params["top"]
  	player.save
  
  end

end