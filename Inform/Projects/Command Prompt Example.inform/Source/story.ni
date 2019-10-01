"Command Prompt Example" by Ryan

The player's response is a text that varies.

After printing the banner text: 
	say "You enter a room with three doors. Which way will you go?[line break](1) north[line break](2) south[line break](3) west";
	now the command prompt is "What is your response? > ".  [Changes command prompt]

To decide whether collecting responses: 
	if the command prompt is "What is your response? > ", yes;  [helps prevent future typing of names from being accepted and changing player name]
	no. 

After reading a command when collecting responses:
	now the player's response is the player's command;
	now the command prompt is ">";  [changes command prompt back to make choice final]
	If the player's response is "1":
		say "You go north";
		move the player to the office; 
		reject the player's command; [necessary to not have inform yell at you]
	Otherwise if the player's response is "2":
		say "You go south";
		move the player to the library;
		reject the player's command;
	Otherwise if the player's response is "3":
		say "You go west";
		move the player to the west wing; 
		reject the player's command. [code adapted from example 416 Identity Theft]


	

	
The meeting space is a room.

The office is a room. It is north of the meeting space.

The library is a room. It is south of the meeting space.

The west wing is a room. It is west of the meeting space.

[Create another decision tree with at least 3 choices]


The bronze key is in the office.
The silver key is in the office.
The gold key is in the office. 

After moving to the office:
	say "You enter the office and see three keys before you. Which one will you take? [line break] (bronze key)";