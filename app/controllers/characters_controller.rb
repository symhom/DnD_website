class CharactersController < ApplicationController

  def index
  end

  def update
    character = Character.find_by(id: params["id"])
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

    character.save
    redirect_to "/characters"
  end

  def destroy
    character = Character.find_by(id: params["id"])
    character.delete
    redirect_to "/characters"
  end

  def create
    Character.create :name => params["name"],
              :specie => params["specie"],
              :character_class => params["character_class"],
              :level => params["level"],
              :picture_url => params["picture_url"],
              :strength => params["strength"],
              :dexterity => params["dexterity"],
              :constitution => params["constitution"],
              :intelligence => params["intelligence"],
              :wisdom => params["wisdom"],
              :charisma => params["charisma"]
    redirect_to "/characters"
  end



end
