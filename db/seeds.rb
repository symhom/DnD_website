# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

Movie.delete_all
Director.delete_all
Character.delete_all
Game.delete_all
Player.delete_all
User.delete_all


u = User.create email: 'Stock@example.org', password: 'admin'
cookie = User.create email: 'cookie@example.org', password: 'monster'
kermit = User.create email: 'kermit@example.org', password: 'thefrog'
fozzy = User.create email: 'fozzy@example.org', password: 'bear'


directors = ["Ron Howard", "Paul Greengrass", "Rian Johnson", "Robert Zemeckis",
              "James Gunn", "Colin Trevorrow", "Bennett Miller",
              "Steven Spielberg", "J.J. Abrams", "Clint Eastwood"]

directors.each do |director|
  Director.create name: director
end

director_data = {"Captain Phillips" => "Paul Greengrass",
"Jurassic Park" => "Steven Spielberg",
"Star Trek" => "J.J. Abrams",
"Star Wars: The Last Jedi" => "Rian Johnson",
"Moneyball" => "Bennett Miller",
"Lincoln" => "Steven Spielberg",
"Sully" => "Clint Eastwood",
"Raiders of the Lost Ark" => "Steven Spielberg",
"Star Wars: The Force Awakens" => "J.J. Abrams",
"Apollo 13" => "Ron Howard",
"Cast Away" => "Robert Zemeckis",
"Guardians of the Galaxy" => "James Gunn"}

movies = [
  {
    "imdb_key" => 'tt1535109',
    "runtime" => 134,
    "year" => 2013,
    "mpaa" => 'PG-13',
    "title" => 'Captain Phillips',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/AnMTMPTUzeWNbYxzp29WqYf1br1.jpg',
    "plot" => 'The true story of Captain Richard Phillips and the 2009 hijacking by Somali pirates of the U.S.-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years.'
  },
  {
    "imdb_key" => 'tt0107290',
    "runtime" => 127,
    "year" => 1993,
    "mpaa" => 'PG-13',
    "title" => 'Jurassic Park',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/c414cDeQ9b6qLPLeKmiJuLDUREJ.jpg',
    "plot" => "During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok."
  },
  {
    "imdb_key" => 'tt0796366',
    "runtime" => 127,
    "year" => 2009,
    "mpaa" => 'PG-13',
    "title" => 'Star Trek',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/6V0CY7pwdDOCDS2XqNWahmIlVYh.jpg',
    "plot" => "The brash James T. Kirk tries to live up to his father's legacy with Mr. Spock keeping him in check as a vengeful Romulan from the future creates black holes to destroy the Federation one planet at a time."
  },
  {
    "imdb_key" => 'tt2527336',
    "runtime" => 152,
    "year" => 2017,
    "mpaa" => 'PG-13',
    "title" => 'Star Wars: The Last Jedi',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/kOVEVeg59E0wsnXmF9nrh6OmWII.jpg',
    "plot" => 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares to do battle with the First Order.'
  },
  {
    "imdb_key" => 'tt1210166',
    "runtime" => 133,
    "year" => 2011,
    "mpaa" => 'PG-13',
    "title" => 'Moneyball',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/3oAa8mJJ97CH9AeGEY6vjAxqcvZ.jpg',
    "plot" => "Oakland A's general manager Billy Beane's successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players."
  },
  {
    "imdb_key" => 'tt0443272',
    "runtime" => 150,
    "year" => 2012,
    "mpaa" => 'PG-13',
    "title" => 'Lincoln',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/gkkiDu9srCCbCMxGKwNwKCxK7KF.jpg',
    "plot" => "As the Civil War continues to rage, America's president struggles with continuing carnage on the battlefield as he fights with many inside his own cabinet on the decision to emancipate the slaves."
  },
  {
    "imdb_key" => 'tt3263904',
    "runtime" => 96,
    "year" => 2016,
    "mpaa" => 'PG-13',
    "title" => 'Sully',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/h6O5OE3ueRVdCc7V7cwTiQocI7D.jpg',
    "plot" => "The story of Chesley Sullenberger, an American pilot who became a hero after landing his damaged plane on the Hudson River in order to save the flight's passengers and crew."
  },

  {
    "imdb_key" => 'tt0082971',
    "runtime" => 115,
    "year" => 1981,
    "mpaa" => 'PG',
    "title" => 'Raiders of the Lost Ark',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/44sKJOGP3fTm4QXBcIuqu0RkdP7.jpg',
    "plot" => 'Archaeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis.'
  },
  {
    "imdb_key" => 'tt2488496',
    "runtime" => 136,
    "year" => 2015,
    "mpaa" => 'PG',
    "title" => 'Star Wars: The Force Awakens',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/weUSwMdQIa3NaXVzwUoIIcAi85d.jpg',
    "plot" => 'Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance.'
  },
  {
    "imdb_key" => 'tt0112384',
    "runtime" => 140,
    "year" => 1995,
    "mpaa" => 'PG',
    "title" => 'Apollo 13',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/6JQ9z3V9x4vlU2GSZx2yNO0PvuX.jpg',
    "plot" => 'NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.'
  },
  {
    "imdb_key" => 'tt0162222',
    "runtime" => 143,
    "year" => 2000,
    "mpaa" => 'PG-13',
    "title" => 'Cast Away',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/w515BrZvczKIxbHurG6HIiYYrba.jpg',
    "plot" => 'A FedEx executive must transform himself physically and emotionally to survive a crash landing on a deserted island.'
  },
  {
    "imdb_key" => 'tt2015381',
    "runtime" => 121,
    "year" => 2014,
    "mpaa" => 'PG-13',
    "title" => 'Guardians of the Galaxy',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/y31QB9kn3XSudA15tV7UWQ9XLuW.jpg',
    "plot" => 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.'
  }
]


movies.each do |movie_data|
  m = Movie.new
  m.imdb_key = movie_data["imdb_key"]
  m.title = movie_data["title"]
  m.plot = movie_data["plot"]
  m.runtime = movie_data["runtime"]
  m.year = movie_data["year"]
  m.mpaa = movie_data["mpaa"]
  m.poster_url = movie_data["poster_url"]
  m.director = Director.find_by(name: director_data[m.title])
  if m.director == nil
    m.director = Director.first
  end

  m.save
end

Map.delete_all

maps = [
  {
    "name" => 'Cragmaw Castle',
    "user_id" => u.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf1.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/27c384f81b9dc0b9dddb19f7_rw_1920.jpg'
  },
    {
    "name" => 'Greenbriar Tavern',
    "user_id" => u.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf4.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/f9d5a70b25d398db755863b1_rw_1200.jpg'
  },
  {
    "name" => 'Abandoned Cabin',
    "user_id" => u.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf1.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/2c870d55688298707b93bf17_rw_1200.jpg'
  },
    {
    "name" => 'The Weeping Collosus',
    "user_id" => kermit.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf4.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/52e40c57daca6353f41d9c1c_rw_600.jpg'
  },
  {
    "name" => 'The Weeping Collosus',
    "user_id" => cookie.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf4.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/52e40c57daca6353f41d9c1c_rw_600.jpg'
  },
    {
    "name" => 'Attack of the Tyrant Claw',
    "user_id" => fozzy.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf3.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/e69991e36c5d2b6f7cd7590a_rw_1200.jpg'
  },
    {
    "name" => 'Sailing Ship',
    "user_id" => u.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/bb9ec13d9728e6f1678e6d10_rw_1200.jpg'
  },
    {
    "name" => 'Temple of the Sky God',
    "user_id" => u.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf5.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/68801217ac02af2fc853f7d0_rw_1200.jpg'
  },
      {
    "name" => 'Gleaming Endeavor',
    "user_id" => u.id,
    "picture_url" => 'https://pro2-bar-s3-cdn-cf3.myportfolio.com/b6995f0dd8973d41d32271aa7bc4c60a/eddbdca2a91f5c3078283bcd_rw_1200.jpg'
  }
]
maps.each do |map_data|
  m = Map.new
  m.name = map_data["name"]
  m.user_id = map_data["user_id"]
  m.picture_url = map_data["picture_url"]
  m.save
end



characters = [
  { "name" => 'Manya',
    "user_id" => u.id,
    "specie" => 'Half-Orc',
    "character_class" => 'Druid',
    "picture_url" => 'https://cdna.artstation.com/p/assets/images/images/005/518/950/large/allison-howle-dnd-manyaportrait-v1.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
    { "name" => 'Draug',
    "user_id" => u.id,
    "specie" => 'Half-Elf',
    "character_class" => 'Rogue',
    "picture_url" => 'https://cdna.artstation.com/p/assets/images/images/005/518/644/large/allison-howle-dnd-draugportrait-v1.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
    { "name" => 'Risa',
    "user_id" => u.id,
    "specie" => 'Tiefling',
    "character_class" => 'Sorceress',
    "picture_url" => 'https://cdna.artstation.com/p/assets/images/images/005/518/958/large/allison-howle-dnd-risaportrait-v1.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
    { "name" => 'Rinn',
    "user_id" => u.id,
    "specie" => 'Elf',
    "character_class" => 'Druid',
    "picture_url" => 'https://cdna.artstation.com/p/assets/images/images/005/518/966/large/allison-howle-dnd-rinnportrait-v1.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
    { "name" => 'Vari',
    "user_id" => u.id,
    "specie" => 'Half-Tiefling',
    "character_class" => 'Wizard',
    "picture_url" => 'https://cdnb.artstation.com/p/assets/images/images/005/518/967/large/allison-howle-dnd-variportrait-v1.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
      { "name" => 'Vari',
    "user_id" => u.id,
    "specie" => 'Half-Elf',
    "character_class" => 'Bard',
    "picture_url" => 'https://cdna.artstation.com/p/assets/images/images/005/689/614/large/allison-howle-comm-mcross-webres.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
    { "name" => 'Alisair',
    "user_id" => u.id,
    "specie" => 'Elf',
    "character_class" => 'Warlock',
    "picture_url" => 'https://cdna.artstation.com/p/assets/images/images/005/714/224/large/allison-howle-dnd-alisairportrait-v4.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
      { "name" => 'Baeshra',
    "user_id" => u.id,
    "specie" => 'Lizardfolk',
    "character_class" => 'Fighter',
    "picture_url" => 'https://cdnb.artstation.com/p/assets/images/images/006/422/927/large/allison-howle-comm-mmann-webres.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
      { "name" => 'Odella',
    "user_id" => fozzy.id,
    "specie" => 'Human',
    "character_class" => 'Sorceress',
    "picture_url" => 'https://cdnb.artstation.com/p/assets/images/images/007/054/177/large/allison-howle-comm-lvanflateren-colorwip-01.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
        { "name" => 'Brammus',
    "user_id" => kermit.id,
    "specie" => 'Dwarf',
    "character_class" => 'Barbarian',
    "picture_url" => 'https://pre00.deviantart.net/ff1f/th/pre/i/2012/103/5/4/dwarf_portrait_by_mrharp-d4vzsph.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
        { "name" => 'Orilos',
    "user_id" => cookie.id,
    "specie" => 'Halfling',
    "character_class" => 'Rogue',
    "picture_url" => 'https://i.pinimg.com/736x/40/80/ea/4080ea5c08cb308161e62a0f06424a25--character-concept-character-ideas.jpg',
    "level" => 1,
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
        { "name" => '',
    "user_id" => u.id,
    "specie" => 'Hobgoblin',
    "character_class" => 'Monster',
    "picture_url" => 'https://i.pinimg.com/originals/ee/34/ed/ee34ed1c9e5f53c3e7aa7b7f49ca387b.jpg',
    "level" => '',
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
    { "name" => '',
    "user_id" => u.id,
    "specie" => 'Beholder',
    "character_class" => 'Monster',
    "picture_url" => 'https://vignette.wikia.nocookie.net/forgottenrealms/images/2/2c/Monster_Manual_5e_-_Beholder_-_p28.jpg',
    "level" => '',
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
    { "name" => '',
    "user_id" => u.id,
    "specie" => 'Nothic',
    "character_class" => 'Monster',
    "picture_url" => 'http://2.bp.blogspot.com/-lFEsp_2ypOc/VL5mGVgBDYI/AAAAAAAAAtM/IluqiAdP-uw/w1200-h630-p-k-no-nu/1243880041091.jpg',
    "level" => '',
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },

    { "name" => '',
    "user_id" => u.id,
    "specie" => 'Owlbear',
    "character_class" => 'Monster',
    "picture_url" => 'https://vignette.wikia.nocookie.net/forgottenrealms/images/4/43/Monster_Manual_5e_-_Owlbear_-_p249.jpg',
    "level" => '',
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  },
      { "name" => '',
    "user_id" => u.id,
    "specie" => 'Tarrasque',
    "character_class" => 'Monster',
    "picture_url" => 'https://imgix.ranker.com/user_node_img/50055/1001082418/original/tarrasque-photo-u1?w=650&q=50&fm=jpg',
    "level" => '',
    "strength" => '',
    "dexterity" => '',
    "constitution" => '',
    "intelligence" => '',
    "wisdom" => '',
    "charisma" => ''
  }
]

characters.each do |character_data|
  m = Character.new
  m.name = character_data["name"]
  m.user_id = character_data["user_id"]
  m.specie = character_data["specie"]
  m.character_class = character_data["character_class"]
  m.level = character_data["level"]
  m.picture_url = character_data["picture_url"]
  m.strength = character_data["strength"]
  m.dexterity = character_data["dexterity"]
  m.constitution = character_data["constitution"]
  m.intelligence = character_data["intelligence"]
  m.wisdom = character_data["wisdom"]
  m.charisma = character_data["charisma"]

  m.save
end

# users are cookie, kermit, fozzy

map1 = Map.find_by(name: "Cragmaw Castle")
map2 = Map.find_by(name: "Greenbriar Tavern")
map3 = Map.find_by(user_id: cookie.id)

game1 = Game.create name: 'Lord of the Rings', user_id: cookie.id, map_id: map3.id
game2 = Game.create name: 'The Brawl', user_id: cookie.id, map_id: map2.id
game3 = Game.create name: 'Attack of Cragmaw Castle', user_id: kermit.id, map_id: map1.id

# cookie = User.create email: 'cookie@example.org', password: 'monster'
manya = Character.find_by(name: 'Manya')
kermitC = Character.find_by(user_id: kermit.id)
nothic = Character.find_by(specie: 'Nothic')
beholder = Character.find_by(specie: 'Beholder')
alisair = Character.find_by(name: 'Alisair')
risa = Character.find_by(name: 'Risa')

Player.create user_id: game1.user_id, game_id: game1.id, character_id: manya.id
Player.create user_id: game1.user_id, game_id: game1.id, character_id: nothic.id
Player.create user_id: game1.user_id, game_id: game1.id, character_id: risa.id

Player.create user_id: game2.user_id, game_id: game2.id, character_id: beholder.id
Player.create user_id: game2.user_id, game_id: game2.id, character_id: alisair.id

Player.create user_id: game3.user_id, game_id: game3.id, character_id: kermitC.id
Player.create user_id: game3.user_id, game_id: game3.id, character_id: nothic.id


print "There are now #{Movie.count} movies in the database.\n"
print "There are now #{Director.count} directors in the database.\n"
print "There are now #{Map.count} maps in the database.\n"
print "There are now #{Character.count} characters in the database.\n"
print "There are now #{User.count} users in the database.\n"
print "There are now #{Game.count} games in the database.\n"
print "There are now #{Player.count} players in the database.\n"

