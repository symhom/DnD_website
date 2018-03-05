# Final Project: DnD

Dungeons and Dragons (DnD) is a fantasy role playing game. 
"The characters embark upon imaginary adventures within a fantasy setting. A Dungeon Master (DM) serves as the game's referee and storyteller while maintaining the setting in which the adventures occur, and playing the role of the inhabitants. The characters form a party that interacts with the setting's inhabitants, and each other. Together they solve dilemmas, engage in battles, and gather treasure and knowledge. In the process the characters earn experience points in order to rise in levels, and become increasingly powerful over a series of sessions".

While DnD does not require any gaming supplies except for dices, players have found it useful to have maps for references, especially for battles and exploring caves, towns, and buildings. Roll20.net is a useful website where players can upload maps, and character. Character images can be moved around the map. This website will mimic roll20.net.

After an account is made, a user can create games. A game has a map, and can add characters as players. One character can be added multiple times as different players. On this game, the user can then drag the players' images around, and these locations are saved automatically. 

There are stock characters and maps that any user can use. 

To access this stock account:
email: Stock@example.org

password: admin

Other user accounts:
email: cookie@example.org

password: monster

email: kermit@example.org

password: thefrog

email: fozzy@example.org

password: bear

## Models

1. Map
2. Character
3. Game
4. User
5. Session
6. Player

### Map
* name: text
* picture url: text
* user_id: integer (it belongs to a user)
* description: text

People will be able to view, upload, and delete maps by adding url links. They can also edit the map's name and description. 

### Characters
* name: text
* specie: text (human, elf, orc, tiefling, halfling, gnome, etc.)
* character_class: text (barbarian, fighter, wizard, rogue, etc)
* picture url: text
* user_id: integer (it belongs to a user)
* description: text 

Character Stats
* Strength: integer
* Dexterity: integer
* Constitution: integer
* Intelligence: integer
* Wisdom: integer
* Charisma: integer

People will be able to view characters. They can create, edit, and delete their own custom made characters. 

### Game
* name: text
* user_id: integer (a user can make a game, and this game belongs to that user)
* map_id: integer (each game has one map)

The dungeon master user will be able to create games and add character images to them. The DM will choose the map, and can click and drag the pictures around to demonstrate the locations of all the players.

### Player
* user_id: integer (belongs to a user)
* game_id: integer (belongs to a game)
* character_id: integer (has one character)
* x_coord: integer (the left coordinate)
* y_coord: integer (the top coordinate)

Users can have many games and characters. If they have two games and want to use the same character in both games, 'Players' allow this connections and duplications. 

### User
* username: text
* password: text

Users will be able to create their own accounts in order to save their custom made characters. Users will be able to create accounts, view their own, and edit the password. 

mpcs52553-final
