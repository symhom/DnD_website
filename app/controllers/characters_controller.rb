class CharactersController < ApplicationController

  def index
    
  end

  def show
    character = Character.find_by(id: params["id"])
    user = character.user_id
    stock_user = User.find_by(email: "Stock@example.org")
    if user != session[:user_id] && user != stock_user.id
      redirect_to "/characters", notice: "You are not allowed to see this character"
    end      

  end


  def update

    character = Character.find_by(id: params["id"])
    if character.user_id != session[:user_id]
      redirect_to "/characters", notice: "You can only update characters you have created"
    else
    character.name = params["name"]
    character.specie = params["specie"]
    character.character_class = params["character_class"]
    character.picture_url = params["picture_url"]
    character.level = params["level"]
    character.strength = params["strength"]
    character.dexterity = params["dexterity"]
    character.constitution = params["constitution"]
    character.intelligence = params["intelligence"]
    character.wisdom = params["wisdom"]
    character.charisma = params["charisma"]
    character.description = params["description"]

    character.save
    redirect_to "/characters"
  end
  end

  def destroy
    character = Character.find_by(id: params["id"])
    character.delete
    redirect_to "/characters"
  end

  def create
    Character.create :name => params["name"],
              :user_id => session[:user_id],
              :specie => params["specie"],
              :character_class => params["character_class"],
              :level => params["level"],
              :picture_url => params["picture_url"],
              :strength => params["strength"],
              :dexterity => params["dexterity"],
              :constitution => params["constitution"],
              :intelligence => params["intelligence"],
              :wisdom => params["wisdom"],
              :charisma => params["charisma"],
              :description => params["description"]
    redirect_to "/characters"
  end



end
