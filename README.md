# Final Project: DnD

Dungeons and Dragons (DnD) is a fantasy role playing game. 
"The characters embark upon imaginary adventures within a fantasy setting. A Dungeon Master (DM) serves as the game's referee and storyteller while maintaining the setting in which the adventures occur, and playing the role of the inhabitants. The characters form a party that interacts with the setting's inhabitants, and each other. Together they solve dilemmas, engage in battles, and gather treasure and knowledge. In the process the characters earn experience points in order to rise in levels, and become increasingly powerful over a series of sessions".

While DnD does not require any gaming supplies except for dices, players have found it useful to have maps for references, especially for battles and exploring caves, towns, and buildings. Roll20.net is a useful website where players can upload maps, and character images. There, it is easier to keep track of where the characters move during an event. 

There are often stores in towns where characters can buy supplies. Another website exists that randomly generates stores with various different supplies. This feature is helpful and time saving for DMs. 

This website will mimic roll20.net

## Models

1. Map
2. Character
3. Game
4. User
5. Store
6. Equipment/Spell/Weapons ? 

### Map
* name: text
* picture url: text

People will be able to view, upload, and delete maps. They can also edit the map's name. 

### Characters
* name: text
* specie: text (human, elf, orc, tiefling, halfling, gnome, etc.)
* class: text (barbarian, fighter, wizard, rogue, etc)
* picture url: text
* has one_to_many equipment: Equipment/Spells/Weapon

Character Stats
* Strength: integer
* Dexterity: integer
* Constitution: integer
* Intelligence: integer
* Wisdom: integer
* Charisma: integer

People will be able to view characters. They can create, edit, and delete their own custom made characters. 

### Game
* has_one Map
* has_many Characters
* Dungeon Master: User
* has_many Users

The dungeon master user will be able to create games and add users to them. The DM will choose the map, but all the other uses can move characters around the map. All players will be able to upload characters to the game. 

### User
* username: text
* password: text

Users will be able to create their own accounts in order to save their custom made characters. Users will be able to create accounts, view their own, and edit it. 

### Store
* name: text
* has_many equipment/spells/weapons

There are often stores where characters can buy supplies. The store will be randomly generated to help the Dungeon Master. People will only be able to view this. 

### Equipment/Spell/Weapons
* name: text
* price: integer
* type: text (equipment, spell, weapons)
* description: text

Users will not be able to delete or edit these items. # mpcs52553-final
