"Steve's Dilemma 2" by Rayn

Use scoring.

The maximum score is 50.

When play begins:
	say "You wake up in your bed, Steve, in the middle of the night. You remember that there is something you absolutely need to write down in your Handy Dandy Notebook for a mystery that you're working on. Time to get up and go find it."
	
The Bedroom is a room. "Your bedroom. Somedays you lie here and look at the carpet. It makes you dizzy. You notice a painting."

The Painting is scenery in the Bedroom. "The painting is an abstract portrait of Blue, going SOUTH to the Kitchen."
The flashlight is a device in the Bedroom. If switched on, the flashlight is lit.

The Kitchen is a room. It is dark. "The kitchen is a mess. You can't remember the last time you cleaned this place. Shame on you! Your dog Blue is here. Your Living Room is east of here." [create new room as a dark room]

The Bedroom Door is a door. It is scenery. It is south of the Bedroom and north of the Kitchen. It is closed.
After opening the Bedroom Door for the first time:  increase the score by 5.

Blue is in the Kitchen. The description is "Blue is your dog. She can't say much other than brr brr brrrr! ...but that about says it all! She pushes a piece of paper your way. On it is a picture of a Glass Jar with a Crystal Key inside. She seems to want you to create this…” [create Blue]

The glass jar is a transparent closed openable container in the Kitchen. 
The Crystal Key unlocks the drawer. The Crystal Key is in the glass jar.

After taking the Crystal Key for the first time: increase the score by 10; say "You found the key!"

The Living Room is a room. The Living Room is dark.

The Living Room Door is a door. It is scenery. It is east of the Kitchen and west of the Living Room. It is closed.
After opening the Living Room Door for the first time: increase the score by 5.

The Thinking Chair is an enterable supporter in the Living Room.

The Table is a kind of supporter.

The Side Table is a Table in the Living Room. The description is "Your trusted Side Table! You two have solved many a mystery together! Side Table has a drawer where you usually keep your handy dandy notebook." A locked closed openable container called the drawer is part of the Side Table. In the drawer is a handy dandy notebook. [create the side-table-drawer and handy-dandy-notebook objects]

After opening the drawer, say "Aha! your trusty handy dandy notebook!"

After taking the handy dandy notebook: increase the score by 30.

Every turn: 
	if score is 50, end the story saying "You found the notebook! Congratulations! A winner is you! Now let's get down to solving some mysteries."

[
Problem:
Steve is awake; he’s thought of something he needs to remember in his handy dandy notebook. Without altering the code given, help Steve navigate to his handy dandy notebook. Make sure to follow Blue’s instructions! Once Steve takes the notebook, end the game.]
